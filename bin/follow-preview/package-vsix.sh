#!/usr/bin/env bash
set -euo pipefail

extension_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
output="${1:-$extension_dir/../../vendor/al-folio-follow-preview.vsix}"
staging="$(mktemp -d)"
trap 'rm -rf "$staging"' EXIT
mkdir -p "$staging/extension"
cp "$extension_dir/package.json" "$extension_dir/extension.js" "$extension_dir/route.js" "$staging/extension/"

cat > "$staging/extension.vsixmanifest" <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<PackageManifest Version="2.0.0" xmlns="http://schemas.microsoft.com/developer/vsx-schema/2011">
  <Metadata>
    <Identity Language="en-US" Id="al-folio-follow-preview" Version="0.1.0" Publisher="gmazzuca-local" />
    <DisplayName>al-folio Follow Preview</DisplayName>
    <Description>Keep the local Jekyll preview on the page selected in the editor.</Description>
    <Categories>Other</Categories>
    <Properties>
      <Property Id="Microsoft.VisualStudio.Code.Engine" Value="^1.100.0" />
      <Property Id="Microsoft.VisualStudio.Code.ExtensionDependencies" Value="" />
      <Property Id="Microsoft.VisualStudio.Code.ExtensionPack" Value="" />
    </Properties>
  </Metadata>
  <Installation>
    <InstallationTarget Id="Microsoft.VisualStudio.Code" />
  </Installation>
  <Dependencies />
  <Assets>
    <Asset Type="Microsoft.VisualStudio.Code.Manifest" Path="extension/package.json" Addressable="true" />
  </Assets>
</PackageManifest>
EOF

cat > "$staging/[Content_Types].xml" <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="json" ContentType="application/json" />
  <Default Extension="js" ContentType="application/javascript" />
  <Default Extension="vsixmanifest" ContentType="text/xml" />
</Types>
EOF

mkdir -p "$(dirname "$output")"
(cd "$staging" && zip -q -r "$output" '[Content_Types].xml' extension.vsixmanifest extension)
printf '%s\n' "$output"
