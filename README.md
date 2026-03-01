# SupraNorminettevim 🛡️

**SupraNorminette** est un plugin ultra-léger écrit en `Vim9script` conçu pour intégrer la Norminette de l'école 42 directement dans votre flux de travail Vim. Il permet de repérer instantanément les erreurs de style dans vos fichiers `.c` et `.h`.

## ✨ Caractéristiques

* **Vitesse Vim9** : Développé avec le nouveau moteur de script de Vim pour une performance optimale.
* **Visualisation claire** : Utilise des `signs` dans la colonne de gauche et des soulignages pour identifier les erreurs.
* **Auto-chargement** : S'active automatiquement pour les fichiers C et Header.
* **Configurable** : Supporte la personnalisation des symboles et des groupes de coloration.

## 🛠️ Configuration

Le plugin fonctionne directement mais vous pouvez le customiser

### Personnaliser le symbole d'erreur
Par défaut, le plugin utilise `✗`. Vous pouvez le changer ainsi :

```vim
g:sp_symbol_signs = '!!'
```

### Activer/Désactiver au démarrage
Si vous souhaitez que le plugin ne s'active pas automatiquement :

```vim
g:supranorminette_enabled = v:false
```

## ⌨️ Utilisation

### Commandes
* `:Norm` : Lance manuellement l'analyse de la Norminette sur le fichier actuel.

### Raccourcis (Keymaps)
Le raccourci suivant est configuré par défaut :
* `<leader><F3>` : Alterne (Toggle) l'affichage des erreurs de la Norminette.

## 🎨 Personnalisation des couleurs

Vous pouvez redéfinir les couleurs des erreurs dans votre configuration pour les adapter à votre `colorscheme` :

```vim
" Change la couleur du signe dans la colonne latérale
hi SupraNormPoint guifg=#a750ff
```

---
Made with ❤️ for 42 students.
