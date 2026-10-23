# MGD Barrierefrei für Shopify

Kostenlose Shopify Theme-App-Erweiterung mit Bedienhilfe und einem konfigurierbaren Block für eine Erklärung zur Barrierefreiheit. Sie benötigt weder Kunden- noch Bestelldaten und verwendet keine externen Tracker.

## Bestandteile

- **MGD Barrierefrei**: App-Embed mit Kontrast, Graustufen, Fokus, Schriftgröße und reduzierter Bewegung
- **MGD Erklärung Barrierefreiheit**: Inhaltsblock für eine eigene Barrierefreiheitsseite
- Einstellungen werden ausschließlich im Theme-Editor gepflegt
- Darstellungswünsche werden nur im `localStorage` des jeweiligen Browsers gespeichert

## Installation und Aktualisierung

Shopify installiert Theme-App-Erweiterungen über eine Shopify-App, nicht über ein ZIP im Shop-Backend. Die GitHub-Release-ZIP ist deshalb ein reproduzierbares Quellpaket; sie enthält bereits alle Assets und muss nicht gebaut werden.

1. Lege im Shopify Partner Dashboard eine App an und hinterlege deren Client-ID ausschließlich als lokale Umgebungsvariable `SHOPIFY_API_KEY`.
2. Klone dieses Repository und führe in einem angemeldeten Shopify-CLI-Kontext `shopify app deploy` aus.
3. Aktiviere den App-Embed **MGD Barrierefrei** im Theme-Editor.
4. Erstelle eine Seite „Barrierefreiheit“ und füge den Block **MGD Erklärung Barrierefreiheit** hinzu.
5. Trage die Seitenadresse im App-Embed ein und prüfe alle Angaben vor Veröffentlichung.

Die App-Konfigurationsdatei enthält nur einen Platzhalter für die Umgebungsvariable; keine Zugangsdaten gehören in Git, das ZIP oder den Theme-Code. Ein Update wird nach `shopify app deploy` über Shopifys App-Release-Prozess bereitgestellt.

## Rechtlicher Hinweis

Der Erklärungstext ist eine anpassbare Vorlage und keine Rechtsberatung oder Konformitätszusage. Prüfe vor Veröffentlichung Status, bekannte Barrieren, zuständige Stelle und Kontaktwege.

## Lokaler Release-Build

```sh
sh scripts/build-release.sh
```

## Wiki

- [Start](docs/wiki/Home.md)
- [Einrichten](docs/wiki/Einrichten.md)
- [Erklärung prüfen](docs/wiki/Erklaerung-pruefen.md)
- [Datenschutz und Sicherheit](docs/wiki/Datenschutz-und-Sicherheit.md)
