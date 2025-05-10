" syntax/dotxt.vim: syntax highlighting for dotxt files
if exists("b:current_syntax")
  finish
endif

" Priority at start: (A), (B), ..., (Z)
syntax match dotxtPriority "^[ \t]*\zs([^ \t]\+)\ze"
" Hints: +project, @context, #tag
syntax match dotxtProject /+[^ \t]\+/
syntax match dotxtContext /@[^ \t]\+/
syntax match dotxtTag /#[^ \t]\+/

" Special key=value tokens
syntax match dotxtCreation /\$c=[^ \t]\+/
syntax match dotxtDue      /\$due=[^ \t]\+/
syntax match dotxtDead     /\$dead=[^ \t]\+/
syntax match dotxtEnd      /\$end=[^ \t]\+/
syntax match dotxtLud      /\$lud=[^ \t]\+/
syntax match dotxtEvery    /\$every=[^ \t]\+/
syntax match dotxtR        /\$r=[^ \t]\+/
" Numeric fields
syntax match dotxtId       /\$id=[0-9]\+/
syntax match dotxtP        /\$P=[0-9]\+/
" progress
syntax match dotxtp        /\$p=[^ \t]\+/

" Define (or link) highlight groups for each token type.
highlight default link dotxtPriority Identifier
highlight default link dotxtProject Todo
highlight default link dotxtContext Type
highlight default link dotxtTag PreProc
highlight default link dotxtCreation Comment
highlight default link dotxtDue Number
highlight default link dotxtDead Special
highlight default link dotxtEnd Identifier
highlight default link dotxtLud Comment
highlight default link dotxtEvery Statement
highlight default link dotxtR Constant
highlight default link dotxtId Number
highlight default link dotxtP Number
highlight default link dotxtp Identifier

let b:current_syntax = "dotxt"
