#!/usr/bin/env sh
set -eu

version=$(tr -d '[:space:]' < VERSION)
case "$version" in [0-9]*.[0-9]*.[0-9]*) ;; *) echo "Ungültige Version: $version" >&2; exit 1;; esac
mkdir -p release
output="release/MGD-Barrierefrei-Shopify-${version}.zip"
zip -qr "$output" VERSION README.md SECURITY.md CHANGELOG.md shopify.app.toml extensions docs -x '*/.DS_Store'
shasum -a 256 "$output" > "${output}.sha256"
echo "Paket erstellt: $output"
