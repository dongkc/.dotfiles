"========================================================
"" Highlight All Function
"========================================================
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"hi def cFunction        gui=bold guifg=cyan
hi def cFunction        cterm=bold ctermfg=202

"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match       cMathOperator     display "[-+\*/%=]"
" C pointer operators
syn match       cPointerOperator  display "->\|\."
" C logical   operators - boolean results
syn match       cLogicalOperator  display "[!<>]=\="
syn match       cLogicalOperator  display "=="
" C bit operators
syn match       cBinaryOperator   display "\(&\||\|\^\|<<\|>>\)=\="
syn match       cBinaryOperator   display "\~"
syn match       cBinaryOperatorError display "\~="
" More C logical operators - highlight in preference to binary
syn match       cLogicalOperator  display "&&\|||"
syn match       cLogicalOperatorError display "\(&&\|||\)="

" Math Operator
hi MyOperator ctermfg=178
hi def link cMathOperator MyOperator
hi def link cPointerOperator MyOperator
hi def link cLogicalOperator MyOperator
hi def link cBinaryOperator MyOperator
hi def link cBinaryOperatorError MyOperator
hi def link cLogicalOperator MyOperator
hi def link cLogicalOperatorError MyOperator
