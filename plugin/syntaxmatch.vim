if exists('b:is_syntax_match_defined')
    finish
endif

" automatic loading and saving syntax
augroup SyntaxMatch
  autocmd!

  " a hack from: http://stackoverflow.com/questions/6496778/vim-run-autocmd-on-all-filetypes-except
  " to match all exept of syntax files - what is syntax file is defined under ftdetect folder
  " autocmd BufWritePre * if index(['syntaxmatch'], &ft) < 0 | :call syntaxmatch#syntaxFileExecute()

  " syntax file won't be automatically created when variable syntax_match_disable is set
  if !exists('g:syntax_match_disable') || !g:syntax_match_disable
      autocmd! BufWrite,BufDelete,BufLeave,BufWipeout,BufUnload  *.log,*.txt  :call syntaxmatch#saveSyntax()
  endif

  autocmd! BufRead * :call syntaxmatch#syntaxFileExecute()
augroup END


" for being able to use defined colors
syntax on
colorscheme syntaxmatch

" manually saving syntax file that will be loaded next time
" when file is opened
command! SaveSyntax         call syntaxmatch#saveSyntax()
command! LoadSyntax         call syntaxmatch#syntaxFileExecute()

" commands for match specification in faster way
command! -nargs=1 Yellow    windo syntax match yellow <f-args>
command! -nargs=1 Yellow2   windo syntax match yellow2 <f-args>
command! -nargs=1 Yellow3   windo syntax match yellow3 <f-args>
command! -nargs=1 Red       windo syntax match red <f-args>
command! -nargs=1 Red2      windo syntax match red2 <f-args>
command! -nargs=1 Red3      windo syntax match red3 <f-args>
command! -nargs=1 Orange    windo syntax match orange <f-args>
command! -nargs=1 Orange2   windo syntax match orange2 <f-args>
command! -nargs=1 Orange3   windo syntax match orange3 <f-args>
command! -nargs=1 Violet    windo syntax match violet <f-args>
command! -nargs=1 Violet2   windo syntax match violet2 <f-args>
command! -nargs=1 Violet3   windo syntax match violet3 <f-args>
command! -nargs=1 Violet4   windo syntax match violet4 <f-args>
command! -nargs=1 Green     windo syntax match green <f-args>
command! -nargs=1 Green2    windo syntax match green2 <f-args>
command! -nargs=1 Green3    windo syntax match green3 <f-args>
command! -nargs=1 Blue      windo syntax match blue <f-args>
command! -nargs=1 Blue2     windo syntax match blue2 <f-args>
command! -nargs=1 Blue3     windo syntax match blue3 <f-args>
command! -nargs=1 Grey      windo syntax match grey <f-args>
command! -nargs=1 Grey2     windo syntax match grey2 <f-args>
command! -nargs=1 Grey3     windo syntax match grey3 <f-args>

command! -nargs=1 Y         windo syntax match yellow <f-args>
command! -nargs=1 Y2        windo syntax match yellow2 <f-args>
command! -nargs=1 Y3        windo syntax match yellow3 <f-args>
command! -nargs=1 R         windo syntax match red <f-args>
command! -nargs=1 R2        windo syntax match red2 <f-args>
command! -nargs=1 R3        windo syntax match red3 <f-args>
command! -nargs=1 O         windo syntax match orange <f-args>
command! -nargs=1 O2        windo syntax match orange2 <f-args>
command! -nargs=1 O3        windo syntax match orange3 <f-args>
command! -nargs=1 V         windo syntax match violet <f-args>
command! -nargs=1 V2        windo syntax match violet2 <f-args>
command! -nargs=1 V3        windo syntax match violet3 <f-args>
command! -nargs=1 V4        windo syntax match violet4 <f-args>
command! -nargs=1 G         windo syntax match green <f-args>
command! -nargs=1 G2        windo syntax match green2 <f-args>
command! -nargs=1 G3        windo syntax match green3 <f-args>
command! -nargs=1 B         windo syntax match blue <f-args>
command! -nargs=1 B2        windo syntax match blue2 <f-args>
command! -nargs=1 B3        windo syntax match blue3 <f-args>
command! -nargs=1 GY        windo syntax match grey <f-args>
command! -nargs=1 GY2       windo syntax match grey2 <f-args>
command! -nargs=1 GY3       windo syntax match grey3 <f-args>


let b:is_syntax_match_defined = 1
