(module

	(import "extism:host/env" "alloc" (func $alloc (param i64) (result i64)))

	(import "extism:host/env" "store_u8" (func $store_u8 (param i64) (param i32)))

	(import "extism:host/env" "store_u64" (func $store_u64 (param i64) (param i64)))

	(import "extism:host/env" "input_load_u8" (func $input_load_u8 (param i64) (result i32)))

	(import "extism:host/env" "load_u8" (func $load_u8 (param i64) (result i32)))

	(import "extism:host/env" "output_set" (func $output_set (param i64) (param i64)))

	(import "extism:host/user" "godot_print" (func $godot_print (param i64)))

	(import "extism:host/user" "is_action_pressed" (func $is_action_pressed (param i64) (result i64)))

	(import "extism:host/user" "is_action_just_pressed" (func $is_action_just_pressed (param i64) (result i64)))

	(memory $memory (export "memory") 1)
(data (i32.const 0) "thbtht")(data (i32.const 6) "htrh")(func $alloc_string (param $offset i32) (param $length i32) (result i64)
		(local $alloc_offset i64)
		(local $added_offset i64)
		(local $byte i32)
		(local $index i32)
		(local.set $alloc_offset (i64.const 0))
		(local.set $added_offset (i64.const 0))
		(local.set $byte (i32.const 0))
		(local.set $index (local.get $offset))

		local.get $length
		i64.extend_i32_u
		call $alloc
		local.tee $alloc_offset
		local.set $added_offset

		(loop $loop
			local.get $index
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
			(i32.add (local.get $length) (local.get $offset))
			i32.le_u
			br_if $loop
		)
		local.get $alloc_offset)(func (export "ready") (result i32)
i32.const 0
i32.const 6
call $alloc_string
call $godot_print
i32.const 6
i32.const 4
call $alloc_string
call $godot_print
i32.const 0)
)