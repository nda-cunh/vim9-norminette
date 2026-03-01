vim9script noclear

if exists('g:loaded_supra_norminette')
  finish
endif
g:loaded_supra_norminette = 1

import autoload 'norminette/SupraNorminette.vim' as Supra

## Highlight groups
hi def DapBreakpoint ctermfg=135 guifg=#a750ff
hi def link NormErrors Underlined

# Sign definition
if exists('g:sp_symbol_signs')
	execute 'sign define NormLinter text=' .. g:sp_symbol_signs .. ' texthl=DapBreakpoint'
else
	sign define NormLinter text=✗ texthl=DapBreakpoint
endif

# Commands
command -nargs=0 Norm Supra.HighlightNorm(expand("%"))

# Keymaps
noremap <leader><F3>		<scriptcmd>Supra.ToggleNorm()<CR>

g:supranorminette_enabled = get(g:, 'supranorminette_enabled', true)

if g:supranorminette_enabled == true
	autocmd VimEnter,WinEnter,BufEnter *.c,*.h ++once call Supra.EnableAugroup()
endif
