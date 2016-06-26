hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tomify"

highlight link Boolean        Statement
highlight link Character      Constant
highlight      ColorColumn                                                 ctermbg=Green
highlight      Comment                   term=bold      ctermfg=LightGrey
highlight link Conditional    Type
highlight      Constant                  term=underline ctermfg=White
highlight      Cursor                                   ctermbg=Green
highlight      CursorColumn                             ctermbg=DarkGrey
highlight      CursorLine                               ctermbg=DarkGrey
highlight      CursorLineNr              term=bold      ctermfg=Blue
highlight link Debug          Special
highlight link Define         PreProc
highlight      Delimiter                                ctermfg=White      ctermbg=Black
highlight      Directory                                ctermfg=Blue
highlight      Error                                    ctermfg=White      ctermbg=Red
" highlight      ErrorMsg                                                  ctermbg=Green
highlight      Exception                                ctermfg=Red        ctermbg=White
highlight link Exception      Type
highlight      Float                                    ctermfg=Blue
highlight link Float          Number
" highlight      Folded                                                    ctermbg=Green
" highlight      FoldColumn                                                ctermbg=Green
highlight      Function                  term=underline ctermfg=Cyan
highlight      Identifier                term=underline ctermfg=Cyan
highlight      Ignore                                   ctermfg=Black
highlight link Include        PreProc
highlight link Keyword        Type
highlight link Label          Type
highlight      LineNr                                   ctermfg=Green
highlight link Macro          PreProc
highlight      MatchParam                                                  ctermbg=Yellow
highlight      NonText                                  ctermfg=Green
highlight      Normal                                   ctermfg=Green
highlight link Number         Constant
highlight link Operator       Type
highlight      Pmenu                     term=underline ctermfg=Blue
highlight      PmenuSel                  term=underline ctermfg=Blue
highlight      PreProc                   term=underline ctermfg=Blue
highlight link PreCondit      PreProc
highlight      PreProc                   term=underline ctermfg=Blue
" highlight      Question                                                  ctermbg=Green
highlight link Repeat         Type
highlight      Search                                   ctermfg=Black      ctermbg=Yellow
" highlight      SignColumn                                                ctermbg=Green
highlight      Special                   term=bold      ctermfg=Magenta
" highlight      SpecialChar                              ctermfg=Black    ctermbg=White
highlight link SpecialChar    Special
" highlight      SpecialComment                           ctermfg=Black    ctermbg=Green
highlight link SpecialComment Special
" highlight      Special                                                   ctermbg=Green
highlight      Statement                 term=bold      ctermfg=Yellow
" highlight      StatusLine                                                ctermbg=Green
" highlight      StatusLineNC                                              ctermbg=Green
highlight link StorageClass   Type
highlight link String         Constant
highlight link Structure      Type
highlight link Tag            Special
highlight      TabLine                                  ctermfg=Blue       ctermbg=Yellow
highlight      TabLineFill                              ctermfg=Blue       ctermbg=Yellow
highlight      TabLineSel                               ctermfg=Blue       ctermbg=Yellow
" highlight      Title                                                     ctermbg=Green
highlight      Todo                                     ctermfg=Blue       ctermbg=Yellow
highlight      Type                      term=underline ctermfg=LightGrey
highlight link Typedef        Type
highlight      Typedef                                  ctermfg=White      ctermbg=Blue
highlight      VertSplit                                                   ctermbg=Green
highlight      Visual                                                      ctermbg=DarkGrey
highlight      WildMenu                                                    ctermbg=Green

" Other
highlight      SpellBad                                                    ctermbg=Green
highlight      SpellCap                                                    ctermbg=Green
highlight      SpellRare                                                   ctermbg=Green
highlight      SpellLocal                                                  ctermbg=Green
" highlight      diffRemoved                                                 ctermbg=Green
" highlight      diffAdded                                                   ctermbg=Green
" highlight      DiffAdd                                                     ctermbg=Green
" highlight      DiffDelete                                                  ctermbg=Green
" highlight      DiffChange                                                  ctermbg=Green
" highlight      DiffText                                                    ctermbg=Green
highlight link phpFunctions   Function
highlight link phpSuperglobal Identifier
highlight link phpQuoteSingle StringDelimiter
highlight link phpBoolean     Constant
highlight link phpNull        Constant
highlight link phpArrayPair   Operator
highlight link phpOperator    Normal
highlight link phpRelation    Normal
highlight link phpVarSelector Identifier
highlight link pythonOperator Statement
highlight link rubySharpBang Comment
" highlight      rubyClass                                                   ctermbg=Green
" highlight      rubyIdentifier                                              ctermbg=Green
highlight link rubyConstant Type
highlight link rubyFunction Function
" highlight      rubyInstanceVariable                                        ctermbg=Green
" highlight      rubySymbol                                                  ctermbg=Green
highlight link rubyGlobalVariable rubyInstanceVariable
highlight link rubyModule rubyClass
" highlight      rubyControl                                                 ctermbg=Green
highlight link rubyString String
highlight link rubyStringDelimiter StringDelimiter
highlight link rubyInterpolationDelimiter Identifier
" highlight      rubyControl                                                 ctermbg=Green
" highlight      rubyRegexpDelimiter                                         ctermbg=Green
" highlight      rubyRegexp                                                  ctermbg=Green
" highlight      rubyRegexpSpecial                                           ctermbg=Green
" highlight      rubyPredefinedIdentifier                                    ctermbg=Green
