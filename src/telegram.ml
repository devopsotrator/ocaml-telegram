
open BatPervasives

let base_url = "https://api.telegram.org/bot"

let perform pair fn params =
	let curl = Curl.init () in
	Curl.set_url curl (Printf.sprintf "%s%s/%s" base_url pair fn);
	Curl.set_httppost curl params;
	let b = Buffer.create 8192 in
	Curl.set_writefunction curl (fun s ->  Buffer.add_string b s; String.length s);
	Curl.perform curl;
	Buffer.contents b

let param k v = Curl.CURLFORM_CONTENT (k, v, Curl.DEFAULT)

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
