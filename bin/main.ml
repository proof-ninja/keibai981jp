open Lwt

let () =
  print_endline "Hello, World!";
  Lwt_main.run
    (Keibai981jp.Main.get_top () >|= print_endline)
