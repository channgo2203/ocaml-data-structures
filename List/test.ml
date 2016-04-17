open Listplus

(* test listplus *)
let _ = let l1 = [1;2;3;4;5;6;7;8;9] in 
	let l2 = [10;11;12;13;14;15;16;17;18;19] in 
	begin
		print_string "\nThe list l1:\n";
		Listplus.print l1 string_of_int;
		
		print_string "\nThe last element of l1:\n";
		match (Listplus.last l1) with
			| None -> print_string "List is empty"
			| Some x -> print_string (string_of_int x);
		
		print_string "\nThe longest prefix of l1:\n";
		Listplus.print (Listplus.biggest_prefix l1) string_of_int;
		
		print_string "\nThe truncate 3 l1:\n";
		Listplus.print (Listplus.truncate 3 l1) string_of_int;
		
		print_string "\nThe concatenation of l1 and l2:\n";
		Listplus.print (Listplus.catenate l1 l2) string_of_int;

		print_string "\nThe prefixes of l1:\n";
		Listplus.print_pre_suffixes (Listplus.prefixes l1) string_of_int;
		
		print_string "\nThe suffixes of l2:\n";
		Listplus.print_pre_suffixes (Listplus.suffixes l2) string_of_int;
		print_string "\n"
		
	end