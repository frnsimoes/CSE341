val a = 10 

val b = a * 2

val a = 5 (* this is not an assignment statement *)
(* at this point, the first 'a' becomes shadowed, it's value is '<hidden>' *)

val c = b
