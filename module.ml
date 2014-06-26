module type Add =
        sig
                type t
                val make : int -> t
                val add : t -> t ->  t
                val print : t -> unit
        end ;;

module Int : Add = 
        struct
                type t = int
                let make v = v 
                let add a b = a + b
                let print a = Printf.printf "%d\n" a
        end ;;

module Float : Add = 
        struct
                type t = float 
                let make v = (float) v
                let add a b = a +. b
                let print a = Printf.printf "%f\n" a
        end ;;

module AddFunctor (A : Add) =
        struct
                let f a b =
                        let a_ = A.make a in
                        let b_ = A.make b in
                        let c_ = A.add a_ b_ in
                        A.print c_ 
        end ;;

module IntF = AddFunctor(Int) ;;
IntF.f 1 2

module FloatF = AddFunctor(Float) ;;
FloatF.f 1 2
