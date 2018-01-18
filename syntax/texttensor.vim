if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "texttensor"



syntax match tensorName "^\%1l.*$"
syntax match tensorDimensions "^\%1l\d\+$"
syntax match tensorOrder "^\%2l.*$$"
syntax match tensorElements "\\d\+"


highlight link numberOfAtoms Special
highlight link latticeVectors Structure

highlight link tensorElements Constant
highlight link tensorName Special
highlight link tensorDimensions Constant
highlight link tensorOrder String
