" vim: set foldmarker={,} foldmethod=marker:
" Notes {1
"===================================================================================
"  (nore) prefix -- non-recursive
"  (un)   prefix -- Remove a mode-specific map
"  Commands                        Mode
"  --------                        ----
"  map                             Normal, Visual, Select, Operator Pending modes
"  nmap, nnoremap, nunmap          Normal mode
"  imap, inoremap, iunmap          Insert and Replace mode
"  vmap, vnoremap, vunmap          Visual and Select mode
"  xmap, xnoremap, xunmap          Visual mode
"  smap, snoremap, sunmap          Select mode
"  cmap, cnoremap, cunmap          Command-line mode
"  omap, onoremap, ounmap          Operator pending mode
"
" Keys         Notation
" -----        ---------
" <C-s>        Ctrl + s
" <A-s>        Alt + s
" <M-s>        Meta + s
" <BS>         Backspace
" <Tab>        Tab
" <CR>         Enter
" <Esc>        Escape
" <Space>      Space
" <Up>         Up arrow
" <Down>       Down arrow
" <Left>       Left arrow
" <Right>      Right arrow
" <F1> - <F12> Function keys 1 to 12
" <Insert>     Insert
" <Del>        Delete
" <Home>       Home
" <End>        End
"===================================================================================
" }1

"===============================================================================
" Keymaps
"===============================================================================
map ts :setlocal spell!<CR>
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>- :split<CR>
nnoremap <Leader><ESC> :nohlsearch<CR>
nnoremap <Leader>tn :set relativenumber!<CR>:set number!<CR>
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>sc :!aspell -c %<CR>
nnoremap <leader>h :%!xxd<CR>
inoremap 9c <C-x><C-o>
" --- Select tag if more than one option exists else jump to tag
nnoremap <Leader>st g<C-]>
" --- Shortcuts for quickfix as it was broken for some reason
autocmd BufReadPost quickfix nnoremap <buffer> <CR> :.cc<CR>
autocmd BufReadPost quickfix nnoremap <buffer> o :.cc<CR>
" --- Strip trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
" --- Save changes to a readonly file with sudo
cmap w!! w !sudo tee %

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Toggle spell checking                                         ts', 'setlocal spell!']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ New vertical split                                            <Leader>\', 'vsplit']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ New horizontal split                                          <Leader>-', 'split']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Turn off search highlighting                                  <Leader><ESC>', 'nohlsearch']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Toggle line numbers                                           <Leader>tn', 'normal <Leader>tn']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Edit configuration file (vimrc)                               <Leader>ev', 'edit $MYVIMRC']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Source vim configuration file (vimrc)                         <Leader>sv', 'normal <Leader>sv']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Spell check entire file with aspell                           <Leader>sc', 'normal <Leader>sc']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Get Hex dump of binary file buffer                            <Leader>h', 'normal <Leader>h']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Vim built in auto completion in inset mode                    9c', 'echo "Use 9c in insert mode to trigger the auto completion"']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Select tag if more than one else jump to tag                  <Leader>st', 'normal <Leader>st']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Remove trailing whitespaces                                   <Leader>W', 'normal <Leader>W']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Save as root                                                  :w!!', 'exe "write !sudo tee % >/dev/null"']]
