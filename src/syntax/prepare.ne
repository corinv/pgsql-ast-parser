@lexer lexerAny

prepare -> kw_prepare ident (lparen data_type_list rparen {% get(1) %}):? %kw_as statement_noprep {% x => ({
        type: 'prepare',
        name: toStr(x[1]),
        ...x[2] && { args: x[2] },
        statement: unwrap(last(x)),
    }) %}