
open BatPervasives

let base_url = "https://api.telegram.org/bot"

let perform pair fn params =
	let open BatUnix in
	let open Printf in
	let params = List.map (fun (k,v) -> Netencoding.Url.(sprintf "%s=%s" (encode k) (encode v))) params |> String.concat "&" in
	let ch_in = open_process_in (sprintf "/usr/bin/wget --no-check-certificate --post-data '%s' -qO - '%s%s/%s'" params base_url pair fn) in
	let r = BatIO.read_all ch_in in
	let res = close_process_in ch_in in
	match res with
		| WEXITED 0 -> r
		| _ -> raise (failwith "wget error")

let param k v = (k, v)

let getUpdates ?(offset=0) pair =
	let open Tel_getUpdates_j in
	let json = perform pair "getUpdates" [param "offset" (string_of_int offset)] |> getUpdates_of_string in
	if json.ok then
		json.result
	else
		None

let sendMessage pair chat_id text =
	let open Tel_ok_j in
	let json = perform pair "sendMessage" [param "text" text; param "chat_id" chat_id] |> ok_of_string in
	json.ok 
