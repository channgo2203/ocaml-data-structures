(* Modules testing *)

open Fdsstack

(* test Stack *)
let _ = let s0 = Fdsstack.empty in 
	let s1 = Fdsstack.push 3 (Fdsstack.push 2 (Fdsstack.push 1 s0)) in 
		let _ = Fdsstack.print s1 (string_of_int) in
			let s2 = Fdsstack.pop (Fdsstack.pop (Fdsstack.pop s1)) in
				let _ = Fdsstack.print s2 (string_of_int) in 
					(* should rais Stack_empty exception *)
					Fdsstack.pop s2
	


