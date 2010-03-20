" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
if exists("g:loaded_fixtr") || &cp
  finish
endif
let g:loaded_fixtr= 1 " your version number
let s:keepcpo           = &cpo
set cpo&vim

" Public Interface:
" FixTR: is a function you expect your users to call
" PickAMap: some sequence of characters that will run your AppFunction
" Repeat these three lines as needed for multiple functions which will
" be used to provide an interface for the user
if !hasmapto('<Plug>FixTR')
  map <unique> <Leader>f t <Plug>FixTR
endif

" Global Maps:
"
map <silent> <unique> <script> <Plug>FixTR
 \ :set lz<CR>:call <SID>AppFunc<CR>:set nolz<CR>

" ------------------------------------------------------------------------------
" s:AppFunction: this function is available vi the <Plug>/<script> interface above
fun! s:FixTR()
  exec ":%s/ý/i/ge"
endfun

" ------------------------------------------------------------------------------
" s:InternalAppFunction: this function cannot be called from outside the
" script, and its name won't clash with whatever else the user has loaded
fun! s:InternalAppFunction(...)

  ..whatever..
endfun

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
