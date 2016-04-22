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

" commands for match specification in faster way
command! -nargs=1 Yellow    syntax match yellow <f-args>
command! -nargs=1 Yellow2   syntax match yellow2 <f-args>
command! -nargs=1 Yellow3   syntax match yellow3 <f-args>
command! -nargs=1 Red       syntax match red <f-args>
command! -nargs=1 Red2      syntax match red2 <f-args>
command! -nargs=1 Red3      syntax match red3 <f-args>
command! -nargs=1 Orange    syntax match orange <f-args>
command! -nargs=1 Orange2   syntax match orange2 <f-args>
command! -nargs=1 Orange3   syntax match orange3 <f-args>
command! -nargs=1 Violet    syntax match violet <f-args>
command! -nargs=1 Violet2   syntax match violet2 <f-args>
command! -nargs=1 Violet3   syntax match violet3 <f-args>
command! -nargs=1 Violet4   syntax match violet4 <f-args>
command! -nargs=1 Green     syntax match green <f-args>
command! -nargs=1 Green2    syntax match green2 <f-args>
command! -nargs=1 Green3    syntax match green3 <f-args>
command! -nargs=1 Blue      syntax match blue <f-args>
command! -nargs=1 Blue2     syntax match blue2 <f-args>
command! -nargs=1 Blue3     syntax match blue3 <f-args>
command! -nargs=1 Grey      syntax match grey <f-args>
command! -nargs=1 Grey2     syntax match grey2 <f-args>
command! -nargs=1 Grey3     syntax match grey3 <f-args>

command! -nargs=1 Y         syntax match yellow <f-args>
command! -nargs=1 Y2        syntax match yellow2 <f-args>
command! -nargs=1 Y3        syntax match yellow3 <f-args>
command! -nargs=1 R         syntax match red <f-args>
command! -nargs=1 R2        syntax match red2 <f-args>
command! -nargs=1 R3        syntax match red3 <f-args>
command! -nargs=1 O         syntax match orange <f-args>
command! -nargs=1 O2        syntax match orange2 <f-args>
command! -nargs=1 O3        syntax match orange3 <f-args>
command! -nargs=1 V         syntax match violet <f-args>
command! -nargs=1 V2        syntax match violet2 <f-args>
command! -nargs=1 V3        syntax match violet3 <f-args>
command! -nargs=1 V4        syntax match violet4 <f-args>
command! -nargs=1 G         syntax match green <f-args>
command! -nargs=1 G2        syntax match green2 <f-args>
command! -nargs=1 G3        syntax match green3 <f-args>
command! -nargs=1 B         syntax match blue <f-args>
command! -nargs=1 B2        syntax match blue2 <f-args>
command! -nargs=1 B3        syntax match blue3 <f-args>
command! -nargs=1 GY        syntax match grey <f-args>
command! -nargs=1 GY2       syntax match grey2 <f-args>
command! -nargs=1 GY3       syntax match grey3 <f-args>


let b:is_syntax_match_defined = 1
