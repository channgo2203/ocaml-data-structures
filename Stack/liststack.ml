(** Exception when a stack is empty *)
exception Stack_empty

(** Implementation of a stack using OCaml list *)
module type Liststack_t = sig 
	type 'a t
	
	val empty : 'a t
	(** Empty stack *)
	
	val isEmpty : 'a t -> bool
	(** Return true if the given stack is empty. Otherwise return false *)
	
	val push : 'a -> 'a t -> 'a t
	(** Push a element on top of the given stack and return a new stack *)
	
	val pop : 'a t -> 'a t
	(** Pop the top element of the given stack and return a new stack 
		removing the top element 
	 *)
	
	val top : 'a t -> 'a
	(** Return the top element. The given stack remain the same as before *)
	 
	val print : 'a t -> ('a -> string) -> unit
	(** Print the stack content to standard stdout *)
end

module Liststack : Liststack_t = struct 
	type 'a t = 'a list

	let empty = []
	
	let isEmpty s = match s with
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
		
end
