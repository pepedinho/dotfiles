---
description: Lance les tests du projet (détecte la stack automatiquement) et corrige ce qui casse.
agent: build
---

Lance les tests du projet et corrige ce qui casse **jusqu'à ce que tout soit vert**.

Détecte la stack selon les fichiers présents à la racine (priorité dans cet ordre) :
- `package.json` → cherche le script `test` ; utilise le gestionnaire selon le lockfile (`bun.lock*` → bun, `pnpm-lock.yaml` → pnpm, `yarn.lock` → yarn, sinon npm).
- `pyproject.toml` ou `setup.cfg` → `pytest` (ou `python -m pytest`).
- `Cargo.toml` → `cargo test`.
- `go.mod` → `go test ./...`.

Rapport final en 2-3 lignes : suite lancée, nombre de tests, résultat.
Donne $ARGUMENTS s'ils existent à la suite de la commande de test (filtre de tests, etc.).