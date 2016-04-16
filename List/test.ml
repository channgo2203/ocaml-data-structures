(* Modules testing *)

open Fdsstack

(* test Stack *)
let _ = let s1 = let s0 = Fdsstack.empty in 
	Fdsstack.push 3 (Fdsstack.push 2 (Fdsstack.push 1 (s0))) in 
	Fdsstack.print s1 string_of_int;
	try ( 
		let s2 = Fdsstack.pop s1 in Fdsstack.print s2 string_of_int;
		let s3 = Fdsstack.pop s2 in Fdsstack.print s3 string_of_int;
		let s4 = Fdsstack.pop s3 in Fdsstack.print s4 string_of_int;
		let s5 = Fdsstack.pop s4 in Fdsstack.print s5 string_of_int
	)
	with Stack_empty -> print_string "\nStack is empty\n";
	let strstack = Fdsstack.push "three" (Fdsstack.push "two" (Fdsstack.push "one" (Fdsstack.empty))) in 
		Fdsstack.print strstack (fun x -> x)

(* test list facility *)
