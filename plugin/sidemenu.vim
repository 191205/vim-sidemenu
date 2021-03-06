" Sidemenu.vim
" The MIT License (MIT)
"
" Maintainer: Rafael Bodill https://github.com/rafi/vim-sidemenu
" Based on: Junegunn Choi https://github.com/junegunn/vim-peekaboo

nnoremap <silent> <Plug>(sidemenu) :<C-u>call sidemenu#open(0)<cr>
xnoremap <silent> <Plug>(sidemenu-visual) :<C-u>call sidemenu#open(1)<cr>

let g:sidemenu = [
	\   { 'title': 'General & Plugins',
	\     'children': [
	\       ['ga', 'call dein#update()', 'Plugins update', 'Update all plugins'],
	\       ['gb', 'Denite dein -no-quit', 'Plugins list'],
	\       ['gc', 'Denite session', 'Restore session'],
	\       ['gc', 'Denite session/new', 'Save session…'],
	\       ['gd', 'Denite z', 'Z (jump around)'],
	\       ['ge', 'Denite help', 'Vim help'],
	\       ['gf', 'Denite command command_history', 'Command history'],
	\   ]},
	\   { 'title': 'Project',
	\     'children': [
	\       ['po', 'TagbarToggle', 'Tag Outline'],
	\       ['ps', 'Denite gitstatus', 'Git status'],
	\       ['pb', 'call feedkeys("ma")', 'Bookmarks'],
	\       ['pu', 'UndotreeToggle', 'Undo tree'],
	\   ]},
	\   { 'title': 'Files',
	\     'children': [
	\       ['fe', 'NERDTreeToggle', 'File explorer'],
	\       ['fg', 'Denite grep', 'Find in files…'],
	\       ['ff', 'Denite file_rec', 'Find files'],
	\       ['fb', 'Denite buffer -default-action=switch', 'Buffers'],
	\       ['fo', 'Denite file_old', 'MRU'],
	\       ['fl', 'Denite line', 'Lines'],
	\       ['fr', 'Denite -resume -refresh', 'Re-open window'],
	\   ]},
	\   { 'title': 'Tools',
	\     'children': [
	\       ['a', 'Denite gitlog:all', 'Git log'],
	\       ['b', 'Denite gitstatus', 'Git status'],
	\       ['c', 'Denite gitchanged:', 'Git changed'],
	\       ['d', 'Neomake', 'Check syntax'],
	\       ['e', 'Denite register -buffer-name=register -default-action=replace', 'Paste from…'],
	\       ['f', 'Goyo', 'Goyo'],
	\       ['g', 'Thesaurus', 'Thesaurus'],
	\       ['h', 'XtermColorTable', 'Xterm color-table'],
	\       ['i', 'Vinarise', 'Hex editor'],
	\       ['j', 'Codi python', 'Codi (python)'],
	\   ]},
	\   { 'title': 'System',
	\     'children': [
	\       ['1', 'CheckHealth', 'Check health'],
	\       ['2', 'echo dein#get_updates_log()', 'View updates log'],
	\       ['3', 'echo dein#get_log()', 'View dein log'],
	\   ]},
	\ ]

" vim: set ts=2 sw=2 tw=80 noet :
