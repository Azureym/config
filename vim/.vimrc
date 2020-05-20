" 显示行数
set nu
" 按编程语言的语法，对代码进行颜色标示， 属于叫做语法高亮
syntax on
" 取消底部状态栏显示。1为关闭，2为开启。
set laststatus=1
" 插入右括号的时候会短暂跳转到匹配的左括号
set showmatch
" 搜索时忽略大小写
set ignorecase
" 设置一个tab对应4个空格
set tabstop=4
" 在按退格键时，如果前面有4个空格， 则会统一清除
set softtabstop=4
" 最基本的自动缩进
set autoindent shiftwidth=4
" 比autoindent稍微智能的自动缩进
set smartindent shiftwidth=4
" 高亮显示搜索匹配到的字符串
set hlsearch
" 设置循环查找
set wrapscan
" 设置字体
set guifont=Consolas:h12
" 设置vim的主题颜色
colorscheme inkpot
" 设置当前页面顶部和底部所预留的行数
set scrolloff=5
" 设置页面横向滚动预留的行数
set sidescroll=3
" 显示vim编辑器底下的默认格式的状态行
set laststatus=2
set ruler

"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"解决Backspace失效的问题
set backspace=indent,eol,start
" Show the next match while entering a searc. https://vim.fandom.com/wiki/Searching
set incsearch

" ---------------- bundle 文件类型检测 ----------------------
"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on

"------------------- bundle 配置 ----------------------
" bundle 配置
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"xml相关功能插件
Bundle 'othree/xml.vim'
"git plugin
Bundle 'tpope/vim-fugitive'
" Insert or delete brackets, parens, quotes in pair.
Bundle 'jiangmiao/auto-pairs'

"============= PowerLine ================
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

"============= NerdTree 配置 ===================
"快捷键映射
"map <F3> :NERDTreeToggle<CR>
"vim启动的时候自动开启nerd tree
"autocmd vimenter * NERDTree

"vim 启动后，光标自动定位在右侧文件中
wincmd w
autocmd VimEnter * wincmd w

"当vim最后一个window退出的时候,nerd自动退出,这样不用手动在退出了
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"选中root即设置为当前目录
let NERDTreeChDirMode=2
"打开文件时关闭树
let NERDTreeQuitOnOpen=1
"显示书签
let NERDTreeShowBookmarks=1
" NERDTress File highlighting(不同文件类型高亮)
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"============ nerdtree-git-plugin =============
" git 文件标记图标配置
let g:NERDTreeIndicatorMapCustom = {
	\ "Modified"  : "✹",
	\ "Staged"    : "✚",
	\ "Untracked" : "✭",
	\ "Renamed"   : "➜",
	\ "Unmerged"  : "═",
	\ "Deleted"   : "✖",
	\ "Dirty"     : "✗",
	\ "Clean"     : "✔︎",
	\ "Unknown"   : "?"
	\ }
