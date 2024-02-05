const std = @import("std");

pub fn build(b: *std.Build) void
{
	const target = .{
		.cpu_arch = .riscv32,
		.cpu_model = .{ .explicit = &std.Target.riscv.cpu.generic_rv32 },	// RV32I
		.os_tag = .freestanding,
		.abi = .eabi,
	};

	const optimize = b.standardOptimizeOption(.{});

	const exe = b.addExecutable(.{
		.name = "link_fail_example.elf",
		.root_source_file = .{ .path = "src/main.zig" },
		.target = target,
		.optimize = optimize,
	});

	const cflags = .{"-std=c99", "-Os", "-march=rv32imc", "-mabi=ilp32"};
	exe.addCSourceFile(.{ .file = .{ .path = "src/vectors.S" }, .flags = &cflags });

	exe.setLinkerScriptPath(.{ .path = "linker.ld" });
	b.installArtifact(exe);
}
