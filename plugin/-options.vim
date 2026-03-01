vim9script noclear

if !exists('*supraconfig#RegisterMany')
	finish
endif

import autoload 'norminette/SupraNorminette' as Norme

supraconfig#RegisterMany([
	{
		id: 'norminette',
		type: 'bool',
		default: true,
		lore: 'Enable norminette',
		spawn: false,
		handler: (v) => {
			if $"v" == "true"
				Norme.EnableNorm()
			else
				Norme.DisableNorm()
			endif
		}
	},
])
