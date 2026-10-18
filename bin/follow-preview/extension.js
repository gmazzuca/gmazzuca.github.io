"use strict";

const http = require("node:http");
const https = require("node:https");
const vscode = require("vscode");
const { pageRoute } = require("./route");

const retryDelayMs = 1000;
const maxAttempts = 60;

function pageIsReady(url) {
  return new Promise((resolve) => {
    const client = url.protocol === "https:" ? https : http;
    const request = client.get(url, (response) => {
      response.resume();
      resolve(response.statusCode >= 200 && response.statusCode < 400);
    });
    request.setTimeout(1000, () => request.destroy());
    request.on("error", () => resolve(false));
  });
}

function activate(context) {
  let currentRoute;
  let generation = 0;

  async function follow(editor, force = false) {
    if (!editor) return;
    const document = editor.document;
    if (document.uri.scheme !== "file") return;
    const folder = vscode.workspace.getWorkspaceFolder(document.uri);
    if (!folder) return;
    const route = pageRoute(folder.uri.fsPath, document.uri.fsPath, document.getText());
    const ownGeneration = ++generation;
    if (!route || (!force && route === currentRoute)) return;

    const baseUrl = vscode.workspace.getConfiguration("alFolioFollowPreview").get("baseUrl");
    let url;
    try {
      url = new URL(route, baseUrl.endsWith("/") ? baseUrl : `${baseUrl}/`);
    } catch {
      vscode.window.showErrorMessage("Set a valid alFolioFollowPreview.baseUrl to use the follow preview.");
      return;
    }

    for (let attempt = 0; attempt < maxAttempts; attempt++) {
      if (ownGeneration !== generation) return;
      if (await pageIsReady(url)) {
        if (ownGeneration !== generation) return;
        await vscode.commands.executeCommand("simpleBrowser.api.open", vscode.Uri.parse(url.href), {
          preserveFocus: true,
          viewColumn: vscode.ViewColumn.Beside,
        });
        currentRoute = route;
        return;
      }
      await new Promise((resolve) => setTimeout(resolve, retryDelayMs));
    }
    if (ownGeneration === generation) {
      vscode.window.showWarningMessage(`The Jekyll preview is unavailable at ${url.href}. Run the Preview al-folio site task.`);
    }
  }

  context.subscriptions.push(
    vscode.window.onDidChangeActiveTextEditor((editor) => follow(editor)),
    vscode.workspace.onDidSaveTextDocument((document) => {
      if (vscode.window.activeTextEditor?.document === document) follow(vscode.window.activeTextEditor);
    }),
    vscode.commands.registerCommand("alFolioFollowPreview.open", () => follow(vscode.window.activeTextEditor, true))
  );

  follow(vscode.window.activeTextEditor);
}

module.exports = { activate };
