(* This is a comment, this is our first program. *)
(* implementation*)

(*nothing*)

val x = 34;
(* static env: x -> int *)
(* aqui temos um 'dynamic environment onde x --> 34 *)

val y = 17;
(* static env: x -> int, y -> int *)
(* dynamic environment: x --> 34, y --> 17 *)


val z = (x + y) + (y + 2);
(* static env: ...*)
(* dynamic env: x --> 34, y --> 17, z --> 70*)

(* A avaliação do código ocorre primeiro no ambiente estático, e apenas depois
* no ambiente dinâmico. Isso significa: z primeiro verificar os os tipos de 'x'
* e 'y', verificar que há também um sinal +, e infere que, portanto, a variável
* Z deve ser do tipo int *)

val abs_of_z = if z < 0 then 0 - z else z; (* bool *) (* int *)
(* dynamic env: ..., abs_of_z --> 70 *)

val abs_of_z_simpler = abs z (* abs(z); abs é um método *)


(* Three questions: what are the syntax, what are the type checks. What are the
* evaluation rules? *)

(* Example:
* Syntax: if e1 then e2 else e3
*   where if, then, and else are keywords and
*   e1, e2 and e3 are subexpressions
*
* Type-checking:
*   first e1 must have type bool
*   e2 and e2 can have any typoe (let's call it t),
*   but they must have the same type t
*   the type of the entire expression is also t
*
* Evaluation rules
*   first evaluate e1 to a value call it v1
*   if it is true, evalute e2 and that result is the whole expression
*   result, else evaluate e3 and that result is the whole expressions' result.
*   *)

(* Isso significa que isto aqui levantará um erro:
*   val a = 2 > 1;
*   if a then 1 else "a" ("Error: types of if branches do not agree [overload -
*   bad instantiation) *)

