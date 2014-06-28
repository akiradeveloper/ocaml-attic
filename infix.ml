open Printf

(* infix pipe operator *)
let (|<) f v = f v ;;
let n = (fun x -> x * 2) |< 3 ;;
printf "%d\n" n
