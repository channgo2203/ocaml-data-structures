type 'a t = 'a list

exception Stack_empty

let create () = []
	
let is_empty s = match s with
	| [] -> true
	| _ -> false
	
let push e s = e :: s
	
let pop s = match s with 
	| [] -> raise Stack_empty
	| h::t -> t
	
let top s = match s with
	| [] -> raise Stack_empty
	| h::t -> h
	
let print s f = 
	let rec print_aux astack printfunction = match astack with 
		| [] -> ()
		| h::t -> print_string (" " ^ (printfunction h)); print_aux t printfunction
	in
		print_string "\n["; print_aux s f; print_string " ]\n"

