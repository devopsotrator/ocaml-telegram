(* Auto-generated from "tel_getUpdates.atd" *)


type user = Tel_getUpdates_t.user = {
  id: int;
  first_name: string;
  last_name: string;
  username: string
}

type getUpdatesEntryMessage = Tel_getUpdates_t.getUpdatesEntryMessage = {
  message_id: int;
  from: user;
  chat: user;
  date: float;
  text: string
}

type getUpdatesEntry = Tel_getUpdates_t.getUpdatesEntry = {
  update_id: int;
  message: getUpdatesEntryMessage
}

type getUpdates = Tel_getUpdates_t.getUpdates = {
  ok: bool;
  result: getUpdatesEntry list option
}

val write_user :
  Bi_outbuf.t -> user -> unit
  (** Output a JSON value of type {!user}. *)

val string_of_user :
  ?len:int -> user -> string
  (** Serialize a value of type {!user}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_user :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> user
  (** Input JSON data of type {!user}. *)

val user_of_string :
  string -> user
  (** Deserialize JSON data of type {!user}. *)

val write_getUpdatesEntryMessage :
  Bi_outbuf.t -> getUpdatesEntryMessage -> unit
  (** Output a JSON value of type {!getUpdatesEntryMessage}. *)

val string_of_getUpdatesEntryMessage :
  ?len:int -> getUpdatesEntryMessage -> string
  (** Serialize a value of type {!getUpdatesEntryMessage}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_getUpdatesEntryMessage :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> getUpdatesEntryMessage
  (** Input JSON data of type {!getUpdatesEntryMessage}. *)

val getUpdatesEntryMessage_of_string :
  string -> getUpdatesEntryMessage
  (** Deserialize JSON data of type {!getUpdatesEntryMessage}. *)

val write_getUpdatesEntry :
  Bi_outbuf.t -> getUpdatesEntry -> unit
  (** Output a JSON value of type {!getUpdatesEntry}. *)

val string_of_getUpdatesEntry :
  ?len:int -> getUpdatesEntry -> string
  (** Serialize a value of type {!getUpdatesEntry}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_getUpdatesEntry :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> getUpdatesEntry
  (** Input JSON data of type {!getUpdatesEntry}. *)

val getUpdatesEntry_of_string :
  string -> getUpdatesEntry
  (** Deserialize JSON data of type {!getUpdatesEntry}. *)

val write_getUpdates :
  Bi_outbuf.t -> getUpdates -> unit
  (** Output a JSON value of type {!getUpdates}. *)

val string_of_getUpdates :
  ?len:int -> getUpdates -> string
  (** Serialize a value of type {!getUpdates}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_getUpdates :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> getUpdates
  (** Input JSON data of type {!getUpdates}. *)

val getUpdates_of_string :
  string -> getUpdates
  (** Deserialize JSON data of type {!getUpdates}. *)

