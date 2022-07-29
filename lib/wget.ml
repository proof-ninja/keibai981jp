open Lwt
open Cohttp_lwt_unix

let get uri =
  Client.get (Uri.of_string uri) >>= fun (_resp, body) ->
  Cohttp_lwt.Body.to_string body
