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
      autocmd! BufWrite,BufDelete,BufLeave,BufWinLeave,BufHidden,BufUnload,BufFilePost,VimLeave,WinLeave,CmdwinLeave,TabLeave  *.log,*.txt  :call syntaxmatch#saveSyntax()
  endif

  autocmd! BufRead * :call syntaxmatch#syntaxFileExecute()
augroup END


" for being able to use defined colors
syntax on
colorscheme syntaxmatch

" manually saving syntax file that will be loaded next time
" when file is opened
command! SaveSyntax         call syntaxmatch#saveSyntax()
command! SS                 call syntaxmatch#saveSyntax()
command! LoadSyntax         call syntaxmatch#syntaxFileExecute()
command! LS                 call syntaxmatch#syntaxFileExecute()

" providing easier run for scrollball bind buffer to all windows
command! WSCB               windo set scb

" commands for match specification in faster way
command! -nargs=1 Yellow    windo syntax match yellow <f-args>
command! -nargs=1 Yellow2   windo syntax match yellow2 <f-args>
command! -nargs=1 Yellow3   windo syntax match yellow3 <f-args>
command! -nargs=1 Yellow4   windo syntax match yellow4 <f-args>
command! -nargs=1 Red       windo syntax match red <f-args>
command! -nargs=1 Red2      windo syntax match red2 <f-args>
command! -nargs=1 Red3      windo syntax match red3 <f-args>
command! -nargs=1 Red4      windo syntax match red4 <f-args>
command! -nargs=1 Orange    windo syntax match orange <f-args>
command! -nargs=1 Orange2   windo syntax match orange2 <f-args>
command! -nargs=1 Orange3   windo syntax match orange3 <f-args>
command! -nargs=1 Violet    windo syntax match violet <f-args>
command! -nargs=1 Violet2   windo syntax match violet2 <f-args>
command! -nargs=1 Violet3   windo syntax match violet3 <f-args>
command! -nargs=1 Violet4   windo syntax match violet4 <f-args>
command! -nargs=1 Violet5   windo syntax match violet5 <f-args>
command! -nargs=1 Green     windo syntax match green <f-args>
command! -nargs=1 Green2    windo syntax match green2 <f-args>
command! -nargs=1 Green3    windo syntax match green3 <f-args>
command! -nargs=1 Green4    windo syntax match green4 <f-args>
command! -nargs=1 Blue      windo syntax match blue <f-args>
command! -nargs=1 Blue2     windo syntax match blue2 <f-args>
command! -nargs=1 Blue3     windo syntax match blue3 <f-args>
command! -nargs=1 Blue4     windo syntax match blue4 <f-args>
command! -nargs=1 Grey      windo syntax match grey <f-args>
command! -nargs=1 Grey2     windo syntax match grey2 <f-args>
command! -nargs=1 Grey3     windo syntax match grey3 <f-args>
command! -nargs=1 Brown     windo syntax match brown <f-args>
command! -nargs=1 Cyan      windo syntax match cyan <f-args>
command! -nargs=1 White     windo syntax match white <f-args>

command! -nargs=1 Y         windo syntax match yellow <f-args>
command! -nargs=1 Y2        windo syntax match yellow2 <f-args>
command! -nargs=1 Y3        windo syntax match yellow3 <f-args>
command! -nargs=1 Y4        windo syntax match yellow4 <f-args>
command! -nargs=1 R         windo syntax match red <f-args>
command! -nargs=1 R2        windo syntax match red2 <f-args>
command! -nargs=1 R3        windo syntax match red3 <f-args>
command! -nargs=1 R4        windo syntax match red4 <f-args>
command! -nargs=1 O         windo syntax match orange <f-args>
command! -nargs=1 O2        windo syntax match orange2 <f-args>
command! -nargs=1 O3        windo syntax match orange3 <f-args>
command! -nargs=1 V         windo syntax match violet <f-args>
command! -nargs=1 V2        windo syntax match violet2 <f-args>
command! -nargs=1 V3        windo syntax match violet3 <f-args>
command! -nargs=1 V4        windo syntax match violet4 <f-args>
command! -nargs=1 V5        windo syntax match violet5 <f-args>
command! -nargs=1 G         windo syntax match green <f-args>
command! -nargs=1 G2        windo syntax match green2 <f-args>
command! -nargs=1 G3        windo syntax match green3 <f-args>
command! -nargs=1 G4        windo syntax match green4 <f-args>
command! -nargs=1 B         windo syntax match blue <f-args>
command! -nargs=1 B2        windo syntax match blue2 <f-args>
command! -nargs=1 B3        windo syntax match blue3 <f-args>
command! -nargs=1 B4        windo syntax match blue4 <f-args>
command! -nargs=1 GY        windo syntax match grey <f-args>
command! -nargs=1 GY2       windo syntax match grey2 <f-args>
command! -nargs=1 GY3       windo syntax match grey3 <f-args>
command! -nargs=1 BR        windo syntax match brown <f-args>
command! -nargs=1 C         windo syntax match cyan <f-args>
command! -nargs=1 W         windo syntax match white <f-args>

command! -nargs=1 Yellowfg    windo syntax match yellowfg <f-args>
command! -nargs=1 YF          windo syntax match yellowfg <f-args>
command! -nargs=1 Redfg       windo syntax match redfg <f-args>
command! -nargs=1 RF          windo syntax match redfg <f-args>
command! -nargs=1 Orangefg    windo syntax match orangefg <f-args>
command! -nargs=1 OF          windo syntax match orangefg <f-args>
command! -nargs=1 Violetfg    windo syntax match violetfg <f-args>
command! -nargs=1 VF          windo syntax match violetfg <f-args>
command! -nargs=1 Greenfg     windo syntax match greenfg <f-args>
command! -nargs=1 GF          windo syntax match greenfg <f-args>
command! -nargs=1 Bluefg      windo syntax match bluefg <f-args>
command! -nargs=1 BF          windo syntax match bluefg <f-args>
command! -nargs=1 Greyfg      windo syntax match greyfg <f-args>
command! -nargs=1 GYF          windo syntax match greyfg <f-args>
command! -nargs=1 Brownfg     windo syntax match brownfg <f-args>
command! -nargs=1 BRF          windo syntax match brownfg <f-args>
command! -nargs=1 Cyanfg      windo syntax match cyanfg <f-args>
command! -nargs=1 CF          windo syntax match cyanfg <f-args>
command! -nargs=1 Whitefg     windo syntax match whitefg <f-args>
command! -nargs=1 WF          windo syntax match whitefg <f-args>

let b:is_syntax_match_defined = 1
