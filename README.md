# Configuration Vim Personnalisée

Ce README détaille votre configuration Vim personnalisée, y compris les paramètres, les plugins et les raccourcis clavier. Utilisez ces informations pour comprendre et personnaliser votre environnement Vim selon vos besoins.

## Configuration Générale

### Sauvegardes

- Activer les sauvegardes Vim pour éviter la perte de données en cas de problème.

### Enregistrement Automatique

- Activer l'enregistrement automatique pour enregistrer vos fichiers lorsque vous changez de fenêtre ou quittez Vim.

### Numéros de Ligne

- Activer l'affichage des numéros de ligne pour vous aider à repérer les lignes dans vos fichiers.

### Correspondance des Parenthèses

- Activer la correspondance des parenthèses pour mettre en évidence la parenthèse correspondante lorsque vous la positionnez sur une parenthèse ouverte/fermée.
Options de Configuration Générale
Activer diverses options de configuration générale pour améliorer l'expérience Vim, notamment la coloration syntaxique, la numérotation relative, l'indentation automatique, les paramètres d'onglet, etc.

## Plugins

### Installation de Vim-Plug

- Vim-Plug est un gestionnaire de plugins pour Vim. Vous pouvez l'installer en suivant les instructions dans votre configuration Vim.

## Liste des Plugins

**NERDTree**

- Un explorateur de fichiers qui vous permet d'ouvrir, de naviguer et de gérer vos fichiers et répertoires.

**CtrlP (Recherche Rapide de Fichiers)**

- Utilisez CtrlP pour rechercher et ouvrir rapidement des fichiers dans votre projet. Accédez au chercheur de fichiers avec <Ctrl-P> en mode normal.

**YouCompleteMe (Autocomplétion Intelligente)**

- VousCompleteMe fournit une autocomplétion intelligente du code et effectue des vérifications d'erreurs. Assurez-vous d'installer les prérequis et d'exécuter :PlugInstall pour le récupérer.

**Nerdcommenter**

- Un plugin qui facilite le commentaire et le décommentaire rapides de lignes de code.

**Surround**

- Un plugin pour manipuler les délimiteurs tels que les guillemets, les parenthèses et les crochets.

**Tagbar**

- Affiche la structure du code en vous permettant de naviguer rapidement dans vos fichiers source.

**Fugitive (Intégration Git)**

- Intégrez Git dans Vim pour effectuer des opérations Git telles que la validation, la comparaison des différences, etc.

**Gitgutter**

- Affiche les modifications Git directement dans la marge pour vous aider à suivre les modifications de votre fichier.

**Airline (Barre de Statut Améliorée)**

- Améliore la barre de statut de Vim en fournissant plus d'informations et une meilleure visibilité.

### Activation des Plugins

- Les plugins sont activés automatiquement une fois installés. Assurez-vous de consulter la documentation de chaque plugin pour personnaliser leur comportement selon vos préférences.

## Personnalisation des Plugins

### Configuration de YouCompleteMe

- Personnalisez la configuration de YouCompleteMe en fonction de vos préférences, notamment les types de fichiers pris en charge et le comportement.

### Configuration de GitGutter

- Personnalisez l'apparence des signes GitGutter ajoutés à vos fichiers, tels que les signes pour les ajouts, les modifications et les suppressions.

### Configuration de NERDCommenter

- Personnalisez NERDCommenter pour gérer les espaces de fin de ligne et définir l'alignement par défaut.

## Raccourcis Clavier

- Utilisez ces raccourcis clavier pour accéder rapidement à différentes fonctionnalités :

<F2> : Enregistrer le fichier.
<F3> : Quitter Vim.
<F4> : Enregistrer et quitter.
<F5> : Enregistrer tous les fichiers ouverts.
<C-n> : Ouvrir/fermer NERDTree.
<C-f> : Rechercher avec FZF.
<C-p> : Rechercher avec Ag.
<C-t> : Ouvrir/fermer Tagbar.
