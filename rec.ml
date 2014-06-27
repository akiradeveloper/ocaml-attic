let rec pow m n =
        if n <= 0 then 1 else
                pow m (n-1) * m ;;
Printf.printf "%d" (pow 2 10) ;;
