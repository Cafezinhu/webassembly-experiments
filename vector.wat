(module
    (memory $memory (export "memory") 17)   
    (data (;0;) (i32.const 1048576) "8c\ed>\da\0fI?^\98{?\da\0f\c9?i7\ac1h!\223\b4\0f\143h!\a23\db\0fI?\db\0fI\bf\e4\cb\16@\00\00\00\00\00\00\00\80\db\0fI@")
    ;;atan generated by rust
    (func $atan (param f32) (result f32)
        (local i32 i32 i32 f32 f32 f32)
        i32.const 1048560
        local.set 2
        block  ;; label = @1
        local.get 0
        i32.reinterpret_f32
        local.tee 3
        i32.const 2147483647
        i32.and
        local.tee 1
        i32.const 1283457023
        i32.le_u
        if  ;; label = @2
            block (result i32)  ;; label = @3
            block  ;; label = @4
                block  ;; label = @5
                local.get 1
                i32.const 1054867456
                i32.ge_u
                if  ;; label = @6
                    local.get 0
                    f32.abs
                    local.set 0
                    local.get 1
                    i32.const 1066926080
                    i32.lt_u
                    br_if 2 (;@4;)
                    local.get 1
                    i32.const 1075576832
                    i32.lt_u
                    br_if 1 (;@5;)
                    f32.const -0x1p+0 (;=-1;)
                    local.get 0
                    f32.div
                    local.set 0
                    i32.const 3
                    br 3 (;@3;)
                end
                i32.const -1
                local.get 1
                i32.const 964689920
                i32.ge_u
                br_if 2 (;@3;)
                drop
                local.get 1
                i32.const 8388608
                i32.ge_u
                br_if 4 (;@1;)
                local.get 2
                local.get 0
                local.get 0
                f32.mul
                f32.store offset=12
                local.get 2
                f32.load offset=12
                drop
                local.get 0
                return
                end
                local.get 0
                f32.const -0x1.8p+0 (;=-1.5;)
                f32.add
                local.get 0
                f32.const 0x1.8p+0 (;=1.5;)
                f32.mul
                f32.const 0x1p+0 (;=1;)
                f32.add
                f32.div
                local.set 0
                i32.const 2
                br 1 (;@3;)
            end
            local.get 1
            i32.const 1060110336
            i32.ge_u
            if  ;; label = @4
                local.get 0
                f32.const -0x1p+0 (;=-1;)
                f32.add
                local.get 0
                f32.const 0x1p+0 (;=1;)
                f32.add
                f32.div
                local.set 0
                i32.const 1
                br 1 (;@3;)
            end
            local.get 0
            local.get 0
            f32.add
            f32.const -0x1p+0 (;=-1;)
            f32.add
            local.get 0
            f32.const 0x1p+1 (;=2;)
            f32.add
            f32.div
            local.set 0
            i32.const 0
            end
            local.set 2
            local.get 0
            local.get 0
            f32.mul
            local.tee 5
            local.get 5
            f32.mul
            local.tee 4
            local.get 4
            f32.const -0x1.b4248ep-4 (;=-0.10648;)
            f32.mul
            f32.const -0x1.99953p-3 (;=-0.199992;)
            f32.add
            f32.mul
            local.set 6
            local.get 5
            local.get 4
            local.get 4
            f32.const 0x1.f9584ap-5 (;=0.0616876;)
            f32.mul
            f32.const 0x1.23ea1ap-3 (;=0.142536;)
            f32.add
            f32.mul
            f32.const 0x1.555552p-2 (;=0.333333;)
            f32.add
            f32.mul
            local.set 4
            local.get 1
            i32.const 1054867456
            i32.ge_u
            if  ;; label = @3
            local.get 2
            i32.const 2
            i32.shl
            local.tee 1
            i32.const -1048576
            i32.sub
            f32.load
            local.get 0
            local.get 6
            local.get 4
            f32.add
            f32.mul
            local.get 1
            i32.const 1048592
            i32.add
            f32.load
            f32.sub
            local.get 0
            f32.sub
            f32.sub
            local.tee 0
            local.get 0
            f32.neg
            local.get 3
            i32.const 0
            i32.ge_s
            select
            return
            end
            local.get 0
            local.get 0
            local.get 6
            local.get 4
            f32.add
            f32.mul
            f32.sub
            local.set 0
            br 1 (;@1;)
        end
        local.get 0
        local.get 0
        f32.ne
        br_if 0 (;@1;)
        f32.const 0x1.921fb4p+0 (;=1.5708;)
        f32.const -0x1.921fb4p+0 (;=-1.5708;)
        local.get 3
        i32.const 0
        i32.ge_s
        select
        return
        end
        local.get 0)
    (func $atan2 (param f32 f32) (result f32)
        (local i32 i32 i32 i32)
        block (result f32)  ;; label = @1
        local.get 1
        local.get 0
        f32.add
        local.get 0
        local.get 0
        f32.eq
        local.get 1
        local.get 1
        f32.eq
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        drop
        local.get 0
        i32.reinterpret_f32
        local.tee 2
        i32.const 1065353216
        i32.eq
        if  ;; label = @2
            local.get 1
            call $atan
            br 1 (;@1;)
        end
        local.get 2
        i32.const 30
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 5
        local.get 1
        i32.reinterpret_f32
        local.tee 3
        i32.const 31
        i32.shr_u
        i32.or
        local.set 4
        block  ;; label = @2
            block  ;; label = @3
            block  ;; label = @4
                block  ;; label = @5
                block  ;; label = @6
                    block  ;; label = @7
                    local.get 3
                    i32.const 2147483647
                    i32.and
                    local.tee 3
                    i32.eqz
                    if  ;; label = @8
                        f32.const -0x1.921fb6p+1 (;=-3.14159;)
                        local.set 0
                        local.get 4
                        br_table 1 (;@7;) 1 (;@7;) 2 (;@6;) 6 (;@2;)
                    end
                    local.get 2
                    i32.const 2147483647
                    i32.and
                    local.tee 2
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 2
                    i32.const 2139095040
                    i32.ne
                    br_if 3 (;@4;)
                    local.get 3
                    i32.const 2139095040
                    i32.ne
                    br_if 4 (;@3;)
                    f32.const -0x1.2d97c8p+1 (;=-2.35619;)
                    local.set 0
                    local.get 4
                    i32.const 3
                    i32.eq
                    br_if 5 (;@2;)
                    local.get 4
                    i32.const 2
                    i32.shl
                    i32.const 1048608
                    i32.add
                    f32.load
                    br 6 (;@1;)
                    end
                    local.get 1
                    br 5 (;@1;)
                end
                f32.const 0x1.921fb6p+1 (;=3.14159;)
                br 4 (;@1;)
                end
                f32.const 0x1.921fb6p+0 (;=1.5708;)
                local.get 1
                f32.copysign
                br 3 (;@1;)
            end
            f32.const 0x1.921fb6p+0 (;=1.5708;)
            local.get 1
            f32.copysign
            local.get 3
            i32.const 2139095040
            i32.ne
            local.get 2
            i32.const 218103808
            i32.add
            local.get 3
            i32.ge_u
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            drop
            block (result f32)  ;; label = @4
                local.get 5
                if  ;; label = @5
                f32.const 0x0p+0 (;=0;)
                local.get 3
                i32.const 218103808
                i32.add
                local.get 2
                i32.lt_u
                br_if 1 (;@4;)
                drop
                end
                local.get 1
                local.get 0
                f32.div
                f32.abs
                call $atan
            end
            local.set 0
            block  ;; label = @4
                block  ;; label = @5
                block  ;; label = @6
                    local.get 4
                    br_table 4 (;@2;) 1 (;@5;) 2 (;@4;) 0 (;@6;)
                end
                local.get 0
                f32.const 0x1.777a5cp-24 (;=8.74228e-08;)
                f32.add
                f32.const -0x1.921fb6p+1 (;=-3.14159;)
                f32.add
                br 4 (;@1;)
                end
                local.get 0
                f32.neg
                br 3 (;@1;)
            end
            f32.const 0x1.921fb6p+1 (;=3.14159;)
            local.get 0
            f32.const 0x1.777a5cp-24 (;=8.74228e-08;)
            f32.add
            f32.sub
            br 2 (;@1;)
            end
            f32.const -0x1.921fb6p+1 (;=-3.14159;)
            local.set 0
            local.get 4
            i32.const 3
            i32.eq
            br_if 0 (;@2;)
            local.get 4
            i32.const 2
            i32.shl
            i32.const 1048620
            i32.add
            f32.load
            local.set 0
        end
        local.get 0
        end
    )
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

    (func $normalize (export "normalize") (param $x f32) (param $y f32) (result f32 f32)
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

    (func (export "angle") (param $x f32) (param $y f32) (result f32)
        local.get $x
        local.get $y
        call $atan2
    )

    (func (export "angle_deg") (param $x f32) (param $y f32) (result f32)
        local.get $x
        local.get $y
        call $atan2
        f32.const 3.14159274
        f32.div
        f32.const 180
        f32.mul
    )
    
)