" Vim color file
" Name: Obsidian3
" Creator: Jeffrey Pratt <me@jeffreypratt.net>
" Version: 0.2
" Date: 8/16/2012 2:56 PM MDT

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="obsidian3"

" Colors
let s:purple        = '#a082bd'
let s:light_gray    = '#e0e2e4'
let s:green         = '#93c763'
let s:gold          = '#ffcd22'
let s:orange        = '#ec7600'
let s:bright_orange = '#ff8409'
let s:beige         = '#e8e2b7'
let s:burnt_orange  = '#d39745'
let s:dark_gray     = '#66747b'
let s:pale_blue     = '#678cb1'
let s:cerulean      = '#5899c0'
let s:teal          = '#5ab9be'
let s:gray_black    = '#293134'
let s:charcoal      = '#2f393c'
let s:yellow        = '#f3db2e'

" Syntax
execute "hi Normal guifg="      . s:light_gray  . " guibg=" . s:gray_black
execute "hi Comment guifg="     . s:dark_gray  . " guibg=" . s:gray_black
execute "hi Conditional guifg=" . s:green  . " guibg=" . s:gray_black
execute "hi Constant guifg="    . s:light_gray  . " guibg=" . s:gray_black
execute "hi Error guifg="       . s:burnt_orange  . " guibg=" . s:gray_black
execute "hi Identifier guifg="  . s:pale_blue  . " guibg=" . s:gray_black
execute "hi Ignore guifg="      . s:light_gray
execute "hi Operator guifg="    . s:beige  . " guibg=" . s:gray_black
execute "hi PreProc guifg="     . s:purple  . " guibg=" . s:gray_black
execute "hi Repeat guifg="      . s:green  . " guibg=" . s:gray_black
execute "hi Special guifg="     . s:green  . " guibg=" . s:gray_black
execute "hi Statement guifg="   . s:green  . " guibg=" . s:gray_black . " gui=none"
execute "hi Number guifg="      . s:gold  . " guibg=" . s:gray_black
execute "hi Boolean guifg="     . s:teal . " guibg=" . s:gray_black
execute "hi String guifg="      . s:bright_orange  . " guibg=" . s:gray_black
execute "hi Character guifg="   . s:bright_orange  . " guibg=" . s:gray_black
execute "hi Title guifg="       . s:light_gray  . " guibg=" . s:gray_black
execute "hi Todo guifg="        . s:gray_black . " guibg=" . s:purple  . " gui=none guisp=NONE"
execute "hi Type guifg="        . s:pale_blue  . " guibg=" . s:gray_black . " gui=none"
execute "hi Underline guifg="   . s:cerulean . " guibg=" . s:gray_black

" Groups
execute "hi Cursor guifg="      . s:gray_black . " guibg=" . s:bright_orange
execute "hi CursorIM guifg="    . s:burnt_orange  . " guibg=" . s:bright_orange
execute "hi CursorLine guifg=NONE guibg=" . s:charcoal
execute "hi CursorColumn guifg=". s:light_gray  . " guibg=" . s:charcoal
execute "hi Directory guifg="   . s:cerulean . " guibg=" . s:gray_black
execute "hi ErrorMsg guifg="    . s:charcoal . " guibg=" . s:burnt_orange
execute "hi FoldColumn guifg="  . s:charcoal . " guibg=" . s:gray_black
execute "hi Folded guifg="      . s:gray_black . " guibg=" . s:teal
execute "hi IncSearch guifg="   . s:light_gray  . " guibg=" . s:gray_black . " gui=none"
execute "hi LineNr guifg="      . '#81969a'  . " guibg=" . '#3f4b4e' . " gui=none"
execute "hi MatchParen guifg="  . s:gray_black . " guibg=" . s:teal  . " gui=none"
execute "hi ModeMsg guifg="     . s:bright_orange  . " guibg=" . s:gray_black
execute "hi MoreMsg guifg="     . s:bright_orange  . " guibg=" . s:gray_black
execute "hi NonText guifg="     . s:dark_gray  . " guibg=" . s:gray_black
execute "hi Pmenu guifg="       . s:light_gray  . " guibg=" . s:dark_gray
execute "hi PmenuSel guifg="    . s:charcoal . " guibg=" . s:pale_blue
execute "hi Question guifg="    . s:purple  . " guibg=" . s:gray_black
execute "hi Search guifg="      . s:purple  . " guibg=" . s:gray_black
execute "hi SpecialKey guifg="  . s:cerulean . " guibg=" . s:gray_black
execute "hi StatusLine guifg="  . s:light_gray  . " guibg=" . s:pale_blue  . " gui=none"
execute "hi StatusLineNC guifg=" . s:light_gray . " guibg=" . s:dark_gray  . " gui=none"
execute "hi TabLine guifg="     . s:dark_gray  . " guibg=" . s:gray_black . " gui=none"
execute "hi TabLineFill guifg=" . s:gray_black . " guibg=" . s:charcoal . " gui=none"
execute "hi TabLineSel guifg="  . s:light_gray  . " guibg=" . s:charcoal . " gui=none"
execute "hi Tooltip guifg="     . s:pale_blue  . " guibg=" . s:dark_gray  . " gui=none"
execute "hi VertSplit guifg="   . s:purple  . " guibg=" . s:charcoal . " gui=none"
execute "hi Visual guifg="     . s:light_gray  . " guibg=" . '#404e51'  . " gui=none"
hi VisualNOS gui=none guibg=black
execute "hi WarningMsg guifg=" . s:bright_orange  . " guibg=" . s:gray_black  . " gui=none"
execute "hi WildMenu guifg="   . s:yellow  . " guibg=" . s:bright_orange  . " gui=none"

" Haskell
let hs_highlight_boolean = 1

execute "hi hsImport guifg=" . s:purple . " guibg=" . s:gray_black
execute "hi hsString guifg=" . s:bright_orange . " guibg=" . s:gray_black
execute "hi hs_hlFunctionName guifg=" . s:pale_blue . " guibg=" . s:gray_black
execute "hi hsStatement guifg=" . s:green . " guibg=" . s:gray_black
execute "hi hsType guifg=" . s:gold . " guibg=" . s:gray_black
execute "hi hsTypedef guifg=" . s:pale_blue . " guibg=" . s:gray_black
execute "hi hsModuleName guifg=" . s:teal. " guibg=" . s:gray_black
execute "hi hsModuleStartLabel guifg=" . s:green . " guibg=" . s:gray_black
hi link hsModuleWhereLabel hsModuleStartLabel
