(module
    (import "extism:host/env" "alloc" (func $alloc (param i64) (result i64)))
    (import "extism:host/env" "store_u8" (func $store_u8 (param i64) (param i32)))
    (import "extism:host/env" "output_set" (func $output_set (param i64) (param i64)))
    (memory $memory (export "memory") 1)
    (data (i32.const 0) "salve rapaziada")
    (func (export "greet") (result i32) 
        ;; (local $i i32)
        ;; (local $offset i64)
        (i64.store (i32.const 0) (call $alloc (i64.const 1)))
        ;; local.set $offset
        ;; (i32.load8_s (i32.const 0))
        i32.const 0
        i64.load 
        (i32.load (i32.const 0))
        call $store_u8
        i32.const 0
        i64.load 
        i64.const 1
        call $output_set
        i32.const 0
    )
)