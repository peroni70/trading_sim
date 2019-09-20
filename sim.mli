open Trade
open Command
open Scraper

(** [rule] represents all the elements of a valid trading rule in relation to a
    specific [stock]. All these elements are listed below. "all" is represented as 
    [amt] = -1 *)
type rule = {
  verb: string; (* command *)
  ticker: string; (* stock ticker *)
  amt: int; (* number of shares *)
  freq: string; (* frequency the command is executed ("once" or "whenever") *)
  measure: string; (* function in analysis *)
  argument: int; (* the args that needed to pass into the measure analysis *)
  gtlt: char; (* '>' or '<' *)
  number: float; (* value of the analysis function output *)
}

(** [evaluate_measure str argument stock state] checks which analysis 
    function [str] refers to and returns the output of that function with
    the necessary arguments given by [argument], [stock], and [state] *)
val evaluate_measure : string -> int -> Scraper.stock -> Trade.state -> float
