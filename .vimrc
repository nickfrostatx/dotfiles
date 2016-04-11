set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

autocmd Filetype html,js setlocal tabstop=2 shiftwidth=2
autocmd Filetype c,cpp setlocal tabstop=3 shiftwidth=3
autocmd Filetype make setlocal noexpandtab

set number

syntax on

if filereadable(".vim.custom")
    so .vim.custom
endif
