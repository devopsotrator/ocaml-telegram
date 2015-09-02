(* Auto-generated from "tel_getUpdates.atd" *)


type user = {
  id: int;
  first_name: string;
  last_name: string;
  username: string
}

type getUpdatesEntryMessage = {
  message_id: int;
  from: user;
  chat: user;
  date: float;
  text: string
}

type getUpdatesEntry = { update_id: int; message: getUpdatesEntryMessage }

type getUpdates = { ok: bool; result: getUpdatesEntry list option }
