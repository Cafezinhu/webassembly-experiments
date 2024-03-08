(module
    (import "extism:host/env" "alloc" (func $alloc (param i64) (result i64)))
    (import "extism:host/env" "store_u8" (func $store_u8 (param i64) (param i32)))
    (import "extism:host/env" "store_u64" (func $store_u64 (param i64) (param i64)))
    (import "extism:host/env" "output_set" (func $output_set (param i64) (param i64)))
    (memory $memory (export "memory") 1)   

    (data (i32.const 0) "Hello world!")

    (func (export "greet") (result i32)
        i32.const 0) 
    
    (func $hello_world (export "hello_world") (result i32)
        (local $offset i64)
        (local $added_offset i64)
        (local $byte i32)
        (local $index i32)
        (local.set $offset (i64.const 0))
        (local.set $added_offset (i64.const 0))
        (local.set $byte (i32.const 0))
        (local.set $index (i32.const 0))

        i64.const 12
        call $alloc
        local.tee $offset
        local.set $added_offset

        (loop $loop
            local.get $index
            i32.const 0
            i32.add
            i32.load8_u
            local.set $byte

            local.get $added_offset
            local.get $byte
            call $store_u8

            local.get $added_offset
            i64.const 1
            i64.add
            local.set $added_offset

            local.get $index
            i32.const 1
            i32.add
            local.tee $index
            i32.const 11
            i32.le_u
            br_if $loop
        )

        local.get $offset
        i64.const 12
        call $output_set

        i32.const 0)
)