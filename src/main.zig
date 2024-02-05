const std = @import("std");

export fn _start() linksection(".text.start") callconv(.Naked) noreturn
{
	asm volatile ("la sp, __stack_top");
	asm volatile (
		\\.option push
		\\.option norelax
		\\la gp, __global_pointer$
		\\.option pop
	);

	asm volatile ("jal zero, _start2");
}

export fn _start2() noreturn
{
	main();
}

pub fn main() noreturn
{
	while (true) {}
	unreachable;
}
