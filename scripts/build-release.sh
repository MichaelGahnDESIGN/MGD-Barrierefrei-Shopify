#!/usr/bin/env sh
set -eu

version=$(tr -d '[:space:]' < VERSION)
case "$version" in [0-9]*.[0-9]*.[0-9]*) ;; *) echo "Ungültige Version: $version" >&2; exit 1;; esac
mkdir -p release
project=$(pwd)
output="release/MGD-Barrierefrei-Shopify-${version}.zip"
rm -f "$output"
# Staging mit Rechten 644/755 (Netzlaufwerk liefert 700), keine Punkt-Dateien
stage=$(mktemp -d)
cp -R VERSION README.md SECURITY.md CHANGELOG.md shopify.app.toml extensions docs "$stage/"
find "$stage" \( -name '.DS_Store' -o -name '.smbdelete*' \) -delete
find "$stage" -type d -exec chmod 755 {} +
find "$stage" -type f -exec chmod 644 {} +
(cd "$stage" && zip -qr "$project/$output" .)
rm -rf "$stage"
# nur Dateiname in die .sha256, sonst klappt shasum -c im Download-Ordner nicht
(cd "$(dirname "$output")" && shasum -a 256 "$(basename "$output")" > "$(basename "$output").sha256")
echo "Paket erstellt: $output"
