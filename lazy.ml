open Printf
open Lazy

let f (x:int lazy_t) :int = force(x) + 2 ;;
printf "%d\n" (f (lazy 3))
