(*
  jaccard - A simple Similarity Index calculation
  @khalidbelk, 2025
  File: utils.ml
*)

module StringSet = Set.Make(String)

type print_format = Regular | Numeric

let is_alpha = function 'a' .. 'z' | 'A' .. 'Z' -> true | _ -> false

let is_digit = function '0' .. '9' -> true | _ -> false

let usage existatus =
  print_endline "USAGE: ./jaccard <str1> <str2>\n";
  print_endline "   <str1>          : The first text to compare (as a string)";
  print_endline "   <str2>          : The second text to compare (as a string)\n";
  print_endline "OPTIONS:";
  print_endline "   -n              : print the numeric result only";
  print_endline "   -h              : display this message\n";
  exit existatus