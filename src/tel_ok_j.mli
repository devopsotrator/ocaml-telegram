(* Auto-generated from "tel_ok.atd" *)


type ok = Tel_ok_t.ok = { ok: bool }

val write_ok :
  Bi_outbuf.t -> ok -> unit
  (** Output a JSON value of type {!ok}. *)

val string_of_ok :
  ?len:int -> ok -> string
  (** Serialize a value of type {!ok}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_ok :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> ok
  (** Input JSON data of type {!ok}. *)

val ok_of_string :
  string -> ok
  (** Deserialize JSON data of type {!ok}. *)

