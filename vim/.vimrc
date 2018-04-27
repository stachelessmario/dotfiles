" Plugins
 call plug#begin('~/.vim/plugged')
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'chrisbra/Colorizer'
 call plug#end()

" Settings
	set showcmd
	set number
	set relativenumber
	set nocompatible
	set splitbelow
	set splitright
	colorscheme elflord
	filetype plugin on
	syntax on
	"let g:airline_powerline_fonts = 1
	let g:airline_theme = 'powerlineish'
	let g:livepreview_previewer = 'zathura'

" Navigating guides
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l

" LaTex snippets (thx Luke)
	autocmd FileType tex colorscheme koehler
	autocmd FileType tex inoremap <F6> <Esc>:!xelatex<space><c-r>%<Enter>a
	autocmd FileType tex nnoremap <F6> :!xelatex<space><c-r>%<Enter>

	autocmd FileType tex nnoremap <F5> <ESC>:LLPStartPreview<CR>
	autocmd FileType tex inoremap ;em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ;bf \textbf{}<++><Esc>T{i
	autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ;chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ;beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ;gr \includegraphics[scale=]{<++>}<Enter>\caption{<++>}<Esc>k/]<Enter>i
	autocmd FileType tex inoremap ;math \[<Enter><Enter><BackSpace>\]<Esc>ki
	autocmd FileType tex inoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ;lst \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;tem <Enter>\item<Space>
	autocmd FileType tex inoremap ;deg ^{\circ}
	autocmd FileType tex inoremap ;fra \frac{}{<++>}<++><ESC>10hi
