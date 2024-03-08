(module
 (type $0 (func (param i32) (result i32)))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\03\00\00\00abc")
 (export "fib" (func $fib))
 (export "memory" (memory $0))
 (func $fib (param $0 i32) (result i32)
  i32.const 1048
    i32.load
 )
)