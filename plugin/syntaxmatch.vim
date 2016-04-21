if exists("b:is_syntax_match_defined")
    finish
endif

autocmd! BufEnter * call syntaxmatch#

let b:is_syntax_match_defined = 1
