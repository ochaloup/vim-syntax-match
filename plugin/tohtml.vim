
if exists("b:is_syntax_match_to_html_defined")
    finish
endif

" thin wrapper over TOhtml function
function! TOHtmlWithLines(line1, line2)
   let g:html_dynamic_folds = 1
   let g:html_no_progress = 1
   exec 'TOhtml'

   " converting span with line numbers to be a links
   " %s$\(<body.*>.*\n\)$\1<h1>Title</h1>\r<p>Description</p>\r<p>\r<ol>\r<li> <a href="#L">Line </a></li>\r</ol>\r</p>\r$
   " %s$l\.[ ]*\([0-9]\+\)$<a href="#L\1">Line \1</a>$g
   %s/\(span id="\)\([^"]*\)\(" class="LineNr">[^0-9<]*\)\([0-9]*\)/\1\2\3<a href="#\2">\4<\/a>/
endfunction
command! -range=% TOHtmlWithLines :call TOHtmlWithLines(<line1>,<line2>)

let b:is_syntax_match_to_html_defined = 1
