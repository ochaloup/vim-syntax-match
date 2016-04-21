
if exists("b:is_syntax_match_to_html_defined")
    finish
endif


function! TOHtmlWithLines(line1, line2)
   " exec on TOhtml does not work - is something like too recursive calls
   exec 'TOhtml'
   " converting span with line numbers to be a links
   %s/\(span id="\)\([^"]*\)\(" class="LineNr">[^0-9<]*\)\([0-9]*\)/\1\2\3<a href="#\2">\4<\/a>/
   %s$\(<body.*>.*\n\)$\1<h1>Title</h1>\r<p>Description</p>\r<p>\r<ol>\r<li> <a href="#L">Line </a></li>\r</ol>\r</p>\r$
   %s$l\.[ ]*\([0-9]\+\)$<a href="#L\1">Line \1</a>$g
endfunction
command! -range=% TOHtmlWithLines :call TOHtmlWithLines(<line1>,<line2>)

let b:is_syntax_match_to_html_defined = 1
