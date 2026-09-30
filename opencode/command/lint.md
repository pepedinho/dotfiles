---
description: Lance le lint et le typecheck du projet, puis corrige les erreurs.
agent: build
---

Lance le lint et, si le projet en a un, le typecheck du projet ; corrige les erreurs signalées **jusqu'à ce que tout soit vert**.

Détecte la stack selon les fichiers présents à la racine :
- `package.json` → exécute `npm run lint` s'il existe (ou `eslint .` / `biome check` / `prettier --check .` selon ce qui est installé) ; typecheck via `tsc --noEmit` si `typescript` est présent.
- `pyproject.toml` → `ruff check .` (ou `flake8`).
- `Cargo.toml` → `cargo clippy --all-targets --all-features -- -D warnings`.
- `go.mod` → `go vet ./...`.

Rapport final en 2-3 lignes : outils lancés, nombre d'erreurs corrigées, résultat.