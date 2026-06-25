if exists("b:current_syntax")
  finish
endif

syntax keyword miLangKeyword extern intern mut Type Tagged yield match Again Done
syntax keyword miLangBuiltin import download exists abort print
syntax keyword miLangBoolean true false
syntax keyword miLangSpecial ok err self
syntax keyword miLangType int float

syntax match miLangOperator "\v\+"
syntax match miLangOperator "\v-"
syntax match miLangOperator "\v\*"
syntax match miLangOperator "\v/"
syntax match miLangOperator "\v:\="
syntax match miLangOperator "\v-\>"
syntax match miLangOperator "\v\=\>"
syntax match miLangOperator "\v\!\!"
syntax match miLangOperator "\v\!\>"
syntax match miLangOperator "\v\|"
syntax match miLangOperator "\v\&"
syntax match miLangOperator "\v\?"
syntax match miLangComment "\v//.*$"

syntax match miLangType "\v\b[A-Z][a-zA-Z0-9_]*\b"
syntax match miLangNumber "\v\b\d+(\.\d+)?\b"
syntax region miLangString start=/"/ skip=/\\"/ end=/"/
syntax region miLangLLVM start=/\v```llvm/ end=/\v```/


highlight default link miLangKeyword   Keyword
highlight default link miLangBuiltin   Function
highlight default link miLangBoolean   Boolean
highlight default link miLangSpecial   Constant
highlight default link miLangComment   Comment
highlight default link miLangType      Type
highlight default link miLangNumber    Number
highlight default link miLangOperator  Operator
highlight default link miLangString    String
highlight default link miLangLLVM      Macro  " Pinta el bloque LLVM como una Macro

let b:current_syntax = "lu"
