# SupraNorminette.vim 🛡️

**SupraNorminette** est un plugin ultra-léger et performant écrit en `Vim9script`. Il intègre la `norminette` de l'école 42 directement dans votre flux de travail pour repérer instantanément les erreurs de style dans vos fichiers `.c` et `.h`.

---

<img width="1128" height="563" alt="image" src="https://github.com/user-attachments/assets/0d6b266b-890b-4527-97a2-773c762a9ee5" />


## ✨ Caractéristiques

* 🖍️ **Visualisation claire** : Signes dans la `signcolumn` et soulignement des erreurs.
* ⚙️ **Auto-chargement** : S'active intelligemment pour les fichiers C et Header.
* 🎨 **Flexible** : Totalement personnalisable (symboles, couleurs, raccourcis).

## ⚙️ Configuration

Le plugin fonctionne immédiatement, mais vous pouvez ajuster ces options dans votre `vimrc` :

### Options globales
```vim
" Changer le symbole d'erreur (défaut: ✗)
g:sp_symbol_signs = '!!'

" Désactiver l'activation automatique au démarrage (défaut: true)
g:supranorminette_enabled = false
```

### Personnalisation des couleurs
Vous pouvez redéfinir les groupes de `highlight` pour coller à votre thème :

```vim
# Couleur du signe dans la colonne latérale
hi SupraNormPoint guifg=#a750ff
```

## ⌨️ Utilisation

### Commandes
* `:Norm` : Lance l'analyse manuelle sur le fichier actuel.

### Raccourcis (Keymaps)
Par défaut, le plugin utilise :
* `<leader><F3>` : Active/Désactive (Toggle) l'affichage des erreurs.

#### Personnaliser le raccourci
Si vous préférez utiliser une autre touche, liez-la simplement à l'`action interne` du plugin :

```vim
# Exemple pour utiliser Ctrl+n à la place de F3
nmap <C-n> <Plug>SupraToggleNorm
```

---
> [!NOTE]
> Assurez-vous que l'exécutable `norminette` est installé et accessible dans votre `$PATH`.

Made with ❤️ for 42 students.
