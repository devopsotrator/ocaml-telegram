
open BatPervasives

let base_url = "https://api.telegram.org/bot"

let perform pair fn params =
	let client = Nethttp_client.Convenience.http_post_message (Printf.sprintf "%s%s/%s" base_url pair fn) params in
	client#response_body#value

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

let init () =
	Nettls_gnutls.init ()
