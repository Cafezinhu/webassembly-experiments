(module
    (import "console" "log" (func $log (param i32) (param i32)))
    (import "js" "mem" (memory 1))
    (global $g (import "js" "global") (mut i32))

    (func $getResposta (result i32)
        i32.const 42)
    (func (export "respostaMais1") (result i32)
        call $getResposta
        i32.const 1
        i32.add)

    (func $add (param $a i32) (param $b i32) (result i32)
        local.get $a
        local.get $b
        i32.add)
    (export "add" (func $add))

    ;;strings
    (data (i32.const 0) "Hello world!")
    (func (export "hello_world") 
        i32.const 0
        i32.const 12
        call $log)

    ;;Global
    (func (export "getGlobal") (result i32)
        (global.get $g))
    (func (export "incGlobal")
        (global.set $g (i32.add (global.get $g) (i32.const 1))))
)