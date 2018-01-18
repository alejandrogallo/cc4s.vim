if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "cc4s"

syntax keyword cc4sKeyword
 \ CoulombVertexReader file data

" Define the highlighting of cc4sKeyword as general Keyword
highlight link cc4sKeyword Keyword



"  SYNTAX FOR COMMENTS  "
"""""""""""""""""""""""""
" the \v key means vim's very magic regex 
syntax match cc4sComment "\v\%.*$"
highlight link cc4sComment Comment


"  OPERATORS  "
"""""""""""""""
"In the cc4s file to assing values '=' it is used
syntax match cc4sOperator "\v\="
syntax match cc4sOperator "\v[\(\)]"
syntax match cc4sOperator "\v[\[\]]"
highlight link cc4sOperator Operator

"  CONSTANTS  "
"""""""""""""""
syntax match cc4sConstant "\v(([0-9]*\.)?[0-9]+E?-?[0-9]*\s?)*$"
syntax match cc4sConstant "\v\d+"
highlight link cc4sConstant Constant
