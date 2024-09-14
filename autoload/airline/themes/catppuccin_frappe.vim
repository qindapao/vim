" =============================================================================
" Filename: autoload/airline/themes/catppuccin_frappe.vim
" Author: tilmaneggers
" License: MIT License
" Last Change: 2023/01/19
"
" =============================================================================

" Original theme colors
let s:rosewater = "#F2D5CF"
let s:flamingo = "#EEBEBE"
let s:pink = "#F4B8E4"
let s:mauve = "#CA9EE6"
let s:red = "#E78284"
let s:maroon = "#EA999C"
let s:peach = "#EF9F76"
let s:yellow = "#E5C890"
let s:green = "#A6D189"
let s:teal = "#81C8BE"
let s:sky = "#99D1DB"
let s:sapphire = "#85C1DC"
let s:blue = "#8CAAEE"
let s:lavender = "#BABBF1"
"
let s:text = "#C6D0F5"
let s:subtext1 = "#B5BFE2"
let s:subtext0 = "#A5ADCE"
let s:overlay2 = "#949CBB"
let s:overlay1 = "#838BA7"
let s:overlay0 = "#737994"
let s:surface2 = "#626880"
let s:surface1 = "#51576D"
let s:surface0 = "#414559"
"
let s:base = "#303446"
let s:mantle = "#292C3C"
let s:crust = "#232634"

" Normal mode
" (Dark)
let s:N1 = [ s:mantle , s:mauve , 15  , 17 ] " guifg guibg ctermfg ctermbg
let s:N2 = [ '#FFFFFF' , '#4682B4' , 153 , 17 ] " guifg guibg ctermfg ctermbg
let s:N3 = [ '#FFFFFF' , '#4682B4' , 15  , 17 ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ s:mantle , '#4682B4' , 59  , 74  ] " guifg guibg ctermfg ctermbg
let s:I2 = [ s:teal , '#4682B4' , 74  , 59  ] " guifg guibg ctermfg ctermbg
let s:I3 = [ s:text , '#4682B4' , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ s:mantle , '#4682B4' , 59  , 209 ] " guifg guibg ctermfg ctermbg
let s:V2 = [ s:mauve , '#4682B4' , 209 , 59  ] " guifg guibg ctermfg ctermbg
let s:V3 = [ s:text , '#4682B4' , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ s:mantle , s:red , 59  , 203 ] " guifg guibg ctermfg ctermbg

" Warning section
let s:WR = [s:mantle ,s:peach , 232, 166 ]


let g:airline#themes#catppuccin_frappe#palette = {}

let g:airline#themes#catppuccin_frappe#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#catppuccin_frappe#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#catppuccin_frappe#palette.insert_replace = {
	\ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#catppuccin_frappe#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#catppuccin_frappe#palette.replace = copy(g:airline#themes#catppuccin_frappe#palette.normal)
let g:airline#themes#catppuccin_frappe#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#catppuccin_frappe#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#catppuccin_frappe#palette.normal.airline_warning = s:WR
let g:airline#themes#catppuccin_frappe#palette.insert.airline_warning = s:WR
let g:airline#themes#catppuccin_frappe#palette.visual.airline_warning = s:WR


_vimrc

Plug 'qindapao/vim-coloresque' 

colorscheme photon

" colorscheme Lightning

" 如果是暗色主题使用下面两种颜色
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2E2E2E ctermbg=15
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3C3C3C ctermbg=15
" " 如果是亮色主题使用下面两种颜色
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#F0F0F0 ctermbg=15
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#F5F5F5 ctermbg=15

