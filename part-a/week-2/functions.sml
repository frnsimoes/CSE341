fun pow(x : int, y : int) =
  if y=0
  then 1
  else x * pow(x, y-1)

fun cube(x : int) =
  pow(x, 3)

(* functions formally *)

(* syntax:
*   fun x0 (x1 : t1, ..., xn : tn) = e
*  functions evaluation
*   A funcion is a value (no evaluation yet).
*   When we create a function, it adds x0 to
*   envinromnet so later expressions can _call_ it
*   (function-call semantics will also allow recursion 
*  type-checking:
*   - adds binding x0 : (t1, * .. * tn) -> t if
*   - can type-check body _e_ to have type _t_ in the static
*   envinronment *)

(* function evaluation in detail:
*   `e0(e1,...,en)`
*   - First, under the current dynamic environ, evaluate e0
*   to a function `fun x0 (x1 : t1, ... , xn : tn = e`. Since call
*   type-check, result _will be a function_. 
*   - Under current dynamic environ, evaluate arguments to values
*   v1, ..., vn
*   - Result is evaluation of e in an environ extended to map
*   x1 to v1, ..., xn to vn *)


