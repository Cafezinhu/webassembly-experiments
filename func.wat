(module
  (import "console" "log" (func $log (param i64)))
  (func (export "logIt")
    i64.const 13
    call $log))
