pub typealias Context = @lex.Context
pub typealias Syntax = @types.Syntax

pub fn parse(str: String) -> Syntax {
    let tokens = []
    @io.println("call parser parse")
    let context: Context = {str: str, offset: 0, array: tokens}
    @io.println("call parser parse")

    @lex.lex(context)
    @io.println("call parser parse")

    let (expr, _) = @lex.parser.parse(tokens[:]).unwrap()

    @io.println("call parser parse")
    @io.println(expr)
    Syntax::Unit
}

test {
  let input = "1 + 2 - 3"
  let ast = parse(input)
  @io.println("print ast json format: \{ast.to_json()}")
  @io.println("print ast string format: \{ast.to_string()}")
  inspect!(ast, content="Unit")
}