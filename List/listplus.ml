
let rec last l = 
	match l with 
		| [] -> None
		| [x] -> Some x
		| _::t -> last t
	
let biggest_prefix l = 
	let rec bpre_aux xs ys = match xs with 
		| [] -> ys
		| [x] -> ys
		| h::t -> bpre_aux t (h::ys)
	in
		List.rev (bpre_aux l [])
	
let rec truncate a l = 
	match l with 
		| [] -> []
		| h::t -> 
			if (h = a) then t
			else truncate a t

let rec catenate l1 l2 = 
	match l1 with 
		| [] -> l2
		| h::t -> h::(catenate t l2)

let prefixes l = 
	let rec pre_aux xs ys = match xs with 
		| [] -> ys
		| h::t -> let bpre = biggest_prefix xs in pre_aux bpre (bpre::ys)
	in pre_aux l [l]

let rec suffixes l = 
	match l with 
		| [] -> [ [] ]
		| h::t -> l::(suffixes t)

let print l f = 
	let rec print_aux al printfunction = match al with 
		| [] -> ()
		| h::t -> print_string (" " ^ (printfunction h)); print_aux t printfunction
	in
		print_string "["; print_aux l f; print_string " ]"

let print_pre_suffixes l f = 
	let rec print_aux al printfunction = match al with
		| [] -> ()
		| h::t ->  print_string " "; print h printfunction; print_aux t printfunction
	in
		print_string "["; print_aux l f; print_string " ]"

