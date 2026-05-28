" Colours.
colorscheme default

" Fix highlighted words not being visible.
hi Search    ctermbg=yellow ctermfg=black guibg=yellow guifg=black
hi IncSearch ctermbg=yellow ctermfg=black guibg=yellow guifg=black
hi Visual    ctermbg=yellow ctermfg=black guibg=yellow guifg=black
hi SpellBad  ctermfg=black  ctermbg=red   guifg=black  guibg=red

" CoC popup colours.
hi Pmenu       cterm=NONE ctermbg=black ctermfg=white guibg=#000000 guifg=#ffffff
hi PmenuSel    cterm=NONE ctermbg=yellow ctermfg=black guibg=#333333 guifg=#ffffff
hi NormalFloat cterm=NONE ctermbg=black ctermfg=white guibg=#000000 guifg=#ffffff
hi FloatBorder cterm=NONE ctermbg=black ctermfg=green guibg=#000000 guifg=#00ff00

" Diagnostics.
hi CocErrorSign   ctermbg=black ctermfg=red    guibg=#000000 guifg=#ff0000
hi CocWarningSign ctermbg=black ctermfg=yellow guibg=#000000 guifg=#ffff00
hi CocInfoSign    ctermbg=black ctermfg=green  guibg=#000000 guifg=#00ff00
hi CocHintSign    ctermbg=black ctermfg=white  guibg=#000000 guifg=#ffffff

" CoC Highlight
hi CocHighlightText  ctermbg=darkgray ctermfg=white guibg=#333333 guifg=#ffffff
hi CocHighlightRead  ctermbg=darkgray ctermfg=white guibg=#333333 guifg=#ffffff
hi CocHighlightWrite ctermbg=darkgray ctermfg=white guibg=#333333 guifg=#ffffff

hi! CocMenuSel    cterm=NONE ctermbg=darkgray ctermfg=white guibg=#333333 guifg=#000000
hi! CocPumSearch  cterm=NONE ctermfg=cyan guifg=#00ffff
hi! CocPumMenu    cterm=NONE ctermfg=white guifg=#ffffff
hi! CocPumShortcut cterm=NONE ctermfg=blue guifg=#0080ff

hi SignColumn ctermbg=235 guibg=#262626
