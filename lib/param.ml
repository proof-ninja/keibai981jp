type area =
  | Hokkaido_Tohoku
  | Kanto
  | Koshin_Hokuriku
  | Tokai
  | Kinki
  | Chugoku_Shikoku
  | Kyusyu_Okinawa

type prefecture =
  | Tokyo
  | Chiba
(*TODO*)

type municipality =
  | Ichikawa
(*TODO*)

type kind =
  | Land (*土地*)
  | Detached_house (*戸建て*)
  | Condominium (*マンション*)
  | Other (*その他*)

type param = {
  area: area;
  prefectures: prefecture list option;
  municipalities : municipality list option;
  biddability: bool option;
  kind : kind;
}

let to_url _param =
  "https://981.jp/ftl/searchRes.do?s.pr=13&s.mu=122033&s.mf=0&s.rg=3&_s.rg=on&_s.pu=on&s.bp0=&s.bp1=&s.sm0=10&s.sm1=200&s.ag0=&s.ag1=50&s.tr="
