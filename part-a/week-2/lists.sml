(* 
* Lista vazia:
*   val l = [];
* Check lista vazia:
*   null l; # true
* Primeiro item da lista:
*   val x = [1, 2, 3, 4];
*   hd x; # 1
* Restante da lista:
*   tl x; # 2, 3, 4
* Adicionar um item numa lista que já tem elementos:
*   9::x; # x = [9, 1, 2, 3, 4]
* Buscar um elemento específico de uma lista:
*   val x = [5, 1, 6, 8] # buscar 6
*   hd (tl (tl x)); *)

(* List Functions *)

fun sum_list(xs : int list) =
  if null xs
  then 0
  else hd xs + sum_list(tl xs)
