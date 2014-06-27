let hell =
        object (self)
                method get = "hello\n"
                method print = print_string self#get 
        end ;;

hell#print ;;

class klass x =
        object (self)
                method get = x
                method print = print_string self#get
        end ;;

let hell2 = new klass "oops\n" ;;
hell2#print ;;
