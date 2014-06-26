let tup : int * string * (float * char) = (1, "a", (1.0, 'c')) ;;
match tup with
| (a, b, _) -> Printf.printf "%d %s\n" a b

(* Need to start from small letter *)
type t = { name : string; age : int }
let a =
        { name = "akira";
          age = 30; } ;;

match a with
| { age = n } -> Printf.printf "%d\n" n

(* Generally Tag of Type | .. but can omit if the tag is all about *)
type dir = Left | Right | Forward
let say dir : unit = (* Use the same name as the type is OK *)
        match dir with
        (* Don't forget to add | *)
        | Left -> Printf.printf "left\n"
        | Right | Forward -> Printf.printf "crazy\n" ;;

say Left ;
say Right ;
say Forward ;

type 'a maybe = Just of 'a | Nothing
let j = Just 1 ;;
match j with
| Just n -> Printf.printf "Just"
| Nothing -> Printf.printf "Nothing"
