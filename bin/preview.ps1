$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
Set-Location $repoRoot

if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
    if (Get-Command wsl -ErrorAction SilentlyContinue) {
        Write-Host 'Starting the Jekyll preview with Ruby in WSL...'
        wsl -- bash -lc 'bash ./bin/preview-wsl'
        exit $LASTEXITCODE
    }
    Write-Error 'Ruby is not installed or is not on PATH. Install Ruby+Devkit or WSL with Ruby, then run this script again. See PREVIEW.md.'
    exit 1
}

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    Write-Error 'Bundler is not installed. Run: gem install bundler -v 4.0.4'
    exit 1
}

bundle check
if ($LASTEXITCODE -ne 0) {
    Write-Host 'Installing Jekyll dependencies...'
    bundle install
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

$env:JEKYLL_ENV = 'development'
Write-Host 'Preview: http://127.0.0.1:4000/'
Write-Host 'Press Ctrl+C to stop the preview.'
bundle exec jekyll serve --config '_config.yml,_config.preview.yml' --watch --livereload --host 127.0.0.1 --port 4000
exit $LASTEXITCODE
