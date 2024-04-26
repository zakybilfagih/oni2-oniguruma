type t

module Match : sig
  type t = {
    index : int;
    startPos : int;
    length : int;
    endPos : int;
    str : string;
  }

  val getText : t -> string
end

val create : string -> (t, string) result
val search : string -> int -> t -> Match.t array
val test : string -> t -> bool

module Fast : sig
  val search : string -> int -> t -> int
  val getLastMatches : string -> t -> Match.t array
  val test : string -> t -> bool
end
