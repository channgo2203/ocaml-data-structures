open Liststack

(* test Stack *)
let _ = let s1 = Liststack.push 3 
			(Liststack.push 2 (Liststack.push 1 (Liststack.create () ))) 
	    in 
			Liststack.print s1 string_of_int;
			try ( 
				let s2 = Liststack.pop s1 in Liststack.print s2 string_of_int;
				let s3 = Liststack.pop s2 in Liststack.print s3 string_of_int;
				let s4 = Liststack.pop s3 in Liststack.print s4 string_of_int;
				let s5 = Liststack.pop s4 in Liststack.print s5 string_of_int
			)
			with Stack_empty -> print_string "\nStack is empty\n";
				let strstack = Liststack.push "one" 
				(Liststack.push "two" (Liststack.push "three" (Liststack.create () ))) in 
				Liststack.print strstack (fun x -> x)

