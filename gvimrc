set guifont=AnonymousPro:h15      " Font family and font size.
set antialias                     " smooth those fonts yo.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set lines=100 columns=91          " Window dimensions.


set guioptions-=r                 " Hide that scrollbar.
" colorscheme twinkle 
" colorscheme classic 
" Peepopen.
colorscheme vividchalk

if has("gui_macvim")
   macmenu &File.New\ Tab key=<nop>
   map <D-t> <Plug>PeepOpen
 end
