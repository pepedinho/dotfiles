# Instructions globales pour opencode

Ce fichier s'applique à toutes les sessions, sans exception. Un `AGENTS.md` présent à la racine d'un projet ajoute les conventions spécifiques de ce projet — les règles ci-dessous restent toujours en vigueur.

## Règles générales

- Vérifie systématiquement les APIs, bibliothèques et fonctionnalités récentes contre la documentation officielle (websearch / webfetch) avant de les intégrer. Ne réponds jamais de mémoire sur du matériel rare ou très récent.
- Avant de coder, lis d'abord le code existant et respecte ses conventions (nommage, structure, patterns). Imite les fichiers voisins.
- Ne modifie jamais de code hors du périmètre demandé. Respecte les contraintes explicites du prompt (fichiers protégés, API publique stable).
- Un changement = une unité logique = un commit atomique. N'inclus jamais de secrets, jamais de fichiers générés, jamais d'artefacts de build.

## Template de demande de feature

Quand tu reçois une demande de feature structurée en CONTEXTE / CONTRAINTES / DÉFINITION DE FINI, respecte-la à la lettre. Si un bloc manque, demande des précisions plutôt que de deviner.

## DÉFINITION DE FINI (par défaut)

Une feature n'est terminée que lorsque TOUTES ces étapes sont faites :

1. **Implémentation** conforme au prompt, suivant les patterns du projet.
2. **Vérification réelle** : lance build + tests et corrige jusqu'à ce que tout soit vert. Ne déclare jamais une tâche finie sans avoir exécuté les commandes.
3. **Lint / typecheck** : lance-les, corrige ce qui casse.
4. **Auto-review** : avant de conclure, fais relire le diff par le subagent `reviewer`, applique ses corrections, puis relance tests/lint.
5. **Commit atomique** : `git status` + `git diff` pour vérifier, message conventionnel `type(scope): description`, ne commit que les fichiers de la tâche. Ne push pas.