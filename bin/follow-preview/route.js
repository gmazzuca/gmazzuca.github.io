"use strict";

const path = require("node:path");

function pageRoute(root, file, contents) {
  const relative = path.relative(root, file);
  if (relative.startsWith("..") || path.isAbsolute(relative)) return null;
  if (!/^_pages[/\\][^/\\]+\.md$/i.test(relative)) return null;

  const frontMatter = /^---\s*\r?\n([\s\S]*?)\r?\n---(?:\s*\r?\n|$)/.exec(contents);
  if (!frontMatter) return null;

  const match = /^permalink:\s*["']?(\/[\w./-]*)["']?\s*(?:#.*)?$/m.exec(frontMatter[1]);
  return match ? match[1] : null;
}

module.exports = { pageRoute };
