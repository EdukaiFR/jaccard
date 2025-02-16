(*
  jaccard - A simple Similarity Index calculation
  @khalidbelk, 2025
  File: main.ml
*)

open Utils

let set_of_list text =
  StringSet.of_list text

let normalize (text: string) : string list =
  text
  |> String.lowercase_ascii
  |> String.split_on_char ' '
  |> List.sort_uniq compare

let compute_sets texts =
  let sets = texts
  |> List.map normalize
  |> List.map set_of_list
in
match sets with
  | set1 :: set2 :: _ ->
    let intersection = StringSet.inter set1 set2 in
    let union = StringSet.union set1 set2
    in (intersection, union)
  | _ -> (StringSet.empty, StringSet.empty)

let jaccard texts format =
  let (inter, union) = compute_sets texts in
  let result =
    if StringSet.is_empty union then 0.0
    else
      float_of_int (StringSet.cardinal inter) /.
      float_of_int (StringSet.cardinal union) *. 100.00
  in
    match format with
     | Regular -> print_endline (Printf.sprintf "Index of similarity: %.2f%%" result)
     | Numeric -> print_endline (Printf.sprintf "%.2f%%" result)

let main () =
  let args = Array.to_list Sys.argv in
  match args with
  | [_; "-h"] -> usage 0
  | _::str1::str2::"-n"::_->
      jaccard [str1; str2] Numeric; exit 0
  | _::str1::str2::_->
      jaccard [str1; str2] Regular; exit 0
  | _ -> print_endline "Invalid arguments.\n"; usage 1

let () =  main ()