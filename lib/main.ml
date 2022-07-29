open Lwt

let search () =
  let _url = "https://981.jp/ftl/searchRes.do?s.pr=12&s.mf=0&_s.rg=on&_s.pu=on&s.bp0=&s.bp1=&s.sm0=&s.sm1=&s.ag0=&s.ag1=&s.tr=" in
  ()


let get_top () =
  Wget.get "https://981.jp/" >|= fun html ->
  let open Soup in
  let soup = Soup.parse html in
  soup $ "h1"
  |> R.leaf_text
