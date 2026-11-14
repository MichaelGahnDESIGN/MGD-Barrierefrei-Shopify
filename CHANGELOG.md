# Changelog

## 1.4.1 – 2026-11-14

- Behoben: Shopify hat das Veröffentlichen der App abgelehnt, weil der Name des Inhaltsblocks zu lang war (Shopify erlaubt höchstens 25 Zeichen).
- Der Block heißt jetzt **MGD Barrierefrei Info** (vorher „MGD Erklärung Barrierefreiheit“). Inhalt und Einstellungen sind gleich geblieben.

## 1.4.0 – 2026-11-14

- Gemeinsame Versionsnummer **1.4.0** für alle Produkte von Michael Gahn DESIGN. So sieht man auf einen Blick, welche Fassungen zusammengehören.
- Keine Änderung an den Funktionen.

## 1.1.0 – 2026-11-11

- **Neu: Bedienhilfe komplett überarbeitet.** Neues Symbol (Person im Kreis) statt Rollstuhl. Der Text daneben erscheint nur, wenn die Maus darüber fährt oder die Tastatur den Button erreicht.
- **Neu:** Besucher wählen selbst **DE oder EN** und **Hell oder Dunkel**. Was beim ersten Besuch gilt, stellst du im Backend ein (Standard-Sprache, Standard-Design). Dazu: englische Beschriftung und „Abstand nach oben“, falls der Button einen Chat-Button verdeckt.
- **Neu:** Jede Funktion hat ein Symbol und ein **(?)**, das kurz erklärt, was sie tut.
- **Neu:** 10 Funktionen, die wirklich wirken: Schriftgröße (90–150 %, auch bei festen Pixel-Schriften), hoher Kontrast, Graustufen, mehr Abstand, lesbare Schrift, Links hervorheben, Fokus sichtbar, Bewegung stoppen (auch Videos), großer Mauszeiger, Lese-Lineal.
- Die Bedienhilfe liegt in einem abgeschirmten Bereich (Shadow DOM). Theme- oder Builder-CSS kann sie nicht mehr verändern.
- Gespeichert wird weiter nur im Browser des Besuchers (localStorage). Frühere Einstellungen der Besucher werden einmalig zurückgesetzt.
- Shopify: Die neuen Einstellungen findest du im Theme-Editor unter **App-Einbettungen → MGD Barrierefrei**.

## 1.0.0 – 2026-10-23

- Erste kostenlose Theme-App-Erweiterung für Shopify.
- Bedienhilfe als App-Embed und Erklärung als Inhaltsblock.
- Fertiges Quellpaket für den Shopify-CLI-Releaseprozess.
