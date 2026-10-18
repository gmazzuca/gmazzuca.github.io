# Preview the website before deployment

This site is built with Jekyll. The preview serves your local edits at
**http://127.0.0.1:4000/** and refreshes the page when you save a file. It does
not publish anything to GitHub Pages.

## Windows with WSL

Run `powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\bin\preview.ps1`.
The script uses Ruby in your default WSL distribution and installs the gems
into the ignored `vendor` directory on first use. This computer already has
Ruby in Ubuntu, so no Windows Ruby installation is needed here. The site's
JavaScript plugin also needs Node.js in WSL. Install Node.js there if it is
missing; the launcher also uses the local runtime in `vendor/preview-node`
when present.

## Windows without WSL

1. Install [Ruby+Devkit 3.3.x](https://rubyinstaller.org/downloads/) and
   complete the MSYS2/Devkit setup offered by the installer.
2. Open a new PowerShell terminal in this repository and run
   `gem install bundler -v 4.0.4`. The version matches `Gemfile.lock`.
3. Run `powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\bin\preview.ps1`.
   The script installs the project's gems on first use, then starts Jekyll.

On macOS or Linux, install Ruby and Bundler, then run `bin/preview`.

In VS Code, you can also run **Tasks: Run Task → Preview al-folio site**.
To view it inside VS Code, run **Simple Browser: Show** from the Command
Palette and enter **http://127.0.0.1:4000/**. Keep the preview terminal open
while you inspect the site; press Ctrl+C to stop it.

The preview uses `_config.preview.yml` to skip external feeds and image
conversion so local changes appear faster. GitHub Pages deployment continues
to use `_config.yml`.
