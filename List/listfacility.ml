(** This module provides some extra useful functions for OCaml list *)
module Listfacility = sig  
	
	type 'a list
	
	val last : 'a list -> 'a option 
	(** Return the last element of the given list *)
	
	val biggest_prefix : 'a list -> 'a list
	(** Return the prefix without the last element of the given list 
	    For example, biggest_prefix [1;2;3] = [1;2]
	  *)
	
	val truncate : 'a -> 'a list -> 'a list
	(** Truncate the given list from the first occurrence of the given value *)
	
	val catenate : 'a list -> 'a list -> 'a list
	(** Catenate two lists *)
	
	val prefixes : 'a list -> 'a list list
	(** Return a list of all prefixes of the given list in increasing order of length.
	    For example, prefixes [1;2;3] = [[];[1];[1;2];[1;2;3]]
	  *)
	  
	val suffixes : 'a list -> 'a list list
	(** Return a list of all suffixes of the given list in decreasing order of length. 
	    For example, suffixes [1;2;3] = [[1;2;3];[2,3];[3],[]]
	  *)
		
end = struct 
	
	type 'a list = 'a list
	
	let rec last xs = match xs with 
	| [] -> None
	| [x] -> Some x
	| _::t -> last t
	
	let rec biggest_prefix xs = match xs with 
	| [] -> []
	| [x] -> []
	| h::t -> 
	
	let rec catenate xs ys = match xs with 
	| [] -> ys
	| h::t -> h :: (catenate t ys)
	
	let rec suffixes xs = match xs with 
	| [] -> [ [] ]
	| h::t -> xs :: (suffixes t)
	
	let rec prefixes xs = match xs with 
	| [] -> [ [] ]
	| h::t ->  xs :: 
end
