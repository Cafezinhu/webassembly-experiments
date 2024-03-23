(module
    (func (export "add") (param $x1 f32) (param $y1 f32) (param $x2 f32) (param $y2 f32) (result f32 f32)
        (local $x3 f32)
        (local $y3 f32)

        local.get $x1
        local.get $x2
        f32.add
        local.set $x3

        local.get $y1
        local.get $y2
        f32.add
        local.set $y3

        local.get $x3
        local.get $y3
    )

    (func (export "subtract") (param $x1 f32) (param $y1 f32) (param $x2 f32) (param $y2 f32) (result f32 f32)
        (local $x3 f32)
        (local $y3 f32)

        local.get $x1
        local.get $x2
        f32.sub
        local.set $x3

        local.get $y1
        local.get $y2
        f32.sub
        local.set $y3

        local.get $x3
        local.get $y3
    )

    (func (export "multiply") (param $x f32) (param $y f32) (param $by f32) (result f32 f32)
        local.get $x
        local.get $by
        f32.mul
        local.set $x

        local.get $y
        local.get $by
        f32.mul
        local.set $y
        
        local.get $x
        local.get $y
    )

    (func (export "divide") (param $x f32) (param $y f32) (param $by f32) (result f32 f32 i32)
        (local $error i32)

        local.get $by
        f32.const 0
        f32.ne
        (if
            (then
                local.get $x
                local.get $by
                f32.div
                local.set $x

                local.get $y
                local.get $by
                f32.div
                local.set $y
            )
            (else 
                i32.const 1
                local.set $error
            )
        )

        local.get $x
        local.get $y
        local.get $error
    )

    (func $magnitude (export "magnitude") (param $x f32) (param $y f32) (result f32)
        local.get $x
        local.get $x
        f32.mul
        local.set $x

        local.get $y
        local.get $y
        f32.mul
        local.set $y

        local.get $x
        local.get $y
        f32.add
        f32.sqrt
    )

    (func (export "normalize") (param $x f32) (param $y f32) (result f32 f32)
        (local $mag f32)

        local.get $x
        local.get $y
        call $magnitude
        local.set $mag

        local.get $x
        local.get $mag
        f32.div
        local.set $x

        local.get $y
        local.get $mag
        f32.div
        local.set $y

        local.get $x
        local.get $y
    )
)