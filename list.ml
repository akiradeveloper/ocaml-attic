open Printf
(* Bad. range 2 1 causes stack overflow *)
let rec range a b = if a = b then [b] else a :: range (a+1) b ;;
(* range 3 1 *)

let r = range 1 10
let l = List.map (fun x -> x * 2) r ;;
let print_l = List.iter (fun x -> printf "%d " x) ;;
print_l l;
printf "\n";
printf "%d\n" (List.fold_left ( * ) 1 l)
