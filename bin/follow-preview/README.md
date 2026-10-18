# Follow preview for this al-folio site

The `Preview al-folio site` task runs Jekyll with live reload. This local VS Code extension opens the built-in Simple Browser beside the editor and follows the `permalink` of each selected file in `_pages/`. Saving a page triggers Jekyll's live reload in that browser view. Pages without a `permalink` are skipped.

Install locally after packaging with `./bin/follow-preview/package-vsix.sh` and `code --install-extension vendor/al-folio-follow-preview.vsix`. Reload the VS Code window once. The extension starts automatically in this repository. Its source lives under `bin/`, which Jekyll excludes from the deployed website. The packaged VSIX goes into the ignored `vendor/` folder.

If the browser panel is closed, run **al-folio: Open Follow Preview** from the Command Palette. The preview URL can be changed with `alFolioFollowPreview.baseUrl`.
