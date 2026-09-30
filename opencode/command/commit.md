---
description: Crée un commit atomique avec un message conventionnel, après avoir vérifié le contenu exact des changements.
agent: build
---

Crée un commit atomique pour la tâche en cours.

Démarche :
1. `git status` et `git diff` pour inspecter précisément les changements.
2. Ne stage que les fichiers de la tâche ; rapporte-moi tout hors périmètre en disant « hors périmètre : ... » avant de continuer si le diff n'est pas clair.
3. Message de commit conventionnel : `type(scope): description` — `type` parmi `feat`, `fix`, `refactor`, `docs`, `test`, `chore` ; `scope` = module concerné (ex. `entities`, `engine`, `assets`). Message à l'impératif, < 72 caractères.
4. N'inclus jamais de secrets, fichiers générés ou artefacts de build.
5. Ne push pas. Ne modifie pas la config git, ne force pas, ne saute pas les hooks.