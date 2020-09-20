open! Core
open! Common
module Bril_type = Bril_type
module Func = Func
module Instr = Instr
module Op = Op

type const =
  | Int of int
  | Bool of bool
[@@deriving sexp_of]

type dest = string * Bril_type.t [@@deriving sexp_of]
type label = string [@@deriving sexp_of]
type arg = string [@@deriving sexp_of]
type func_name = string [@@deriving sexp_of]
type t = Func.t list [@@deriving sexp_of]

val from_json : Yojson.Basic.t -> t
val to_json : t -> Yojson.Basic.t
