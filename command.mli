(** The type [phrase] is a string representation of a phrase of extra
    information that may come after a command verb*)
type phrase = string list 

(** The type [command] represents a trading action or stock information that
    the user requests in the user interface or simulation. These are decomposed as
    verbs within a [phrase] that specifies all needed information for the command.*)
type command = 
  | Buy of phrase
  | Sell of phrase
  | Quit 
  | Volatility of phrase
  | SMA of phrase 
  | Skew of phrase 
  | Momentum of phrase
  | ROC of phrase
  | Analysis of phrase
  | Next of phrase
  | Help 
  | View 
  | Short of phrase
  | Close of phrase
  | Price of phrase
  | None

(** Raised when an empty command is parsed. *)
exception Empty

(** Raised when a malformed command is encountered. *)
exception Malformed

(** [parse string] parses the inputted [string] and returns the
    corresponding command*)
val parse: string -> Scraper.stock list -> command