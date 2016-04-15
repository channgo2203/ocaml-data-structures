(* implementation of related list data structures *)

exception Stack_empty

(* 
 * Signature for stacks
 *)
module type Fdsstack_t = sig 
	type 'a t
	(* empty stack *)
	val empty : 'a t
	
	(* empty checking *)
	val isEmpty : 'a t -> bool

	(* push an element on top of the given stack 
	 * return a new stack with this element 
	 *)
	val push : 'a -> 'a t -> 'a t
	
	(* pop the top element 
	 * return a new stack removing the top element 
	 *)
	val pop : 'a t -> 'a t
	
	(* get the top element
	 * the stack remain the same as before 
	 *)
	val top : 'a t -> 'a
	
	(* print the stack content *)
	val print : 'a t -> ('a -> string) -> unit
	
end

(*
 * An implementation of stack with primitive OCaml list
 *) 
module Fdsstack = struct 
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
