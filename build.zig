const Builder = @import("std").build.Builder;
const builtin = @import("builtin");
const std = @import("std");

pub fn build(b: *Builder) void {
    const want_arm64 = b.option(bool, "arm64", "Build for arm64") orelse false;

    var exe: *std.build.LibExeObjStep = undefined;
    if (want_arm64) {
        exe = b.addExecutable("zig-return-struct-arm64", "src/main.zig");
        exe.setTarget(
            builtin.Arch{ .aarch64 = builtin.Arch.Arm64.v8 },
            builtin.Os.linux,
            builtin.Abi.gnu,
        );
    } else {
        exe = b.addExecutable("zig-return-struct-x86_64", "src/main.zig");
    }

    const mode = b.standardReleaseOptions();
    exe.setBuildMode(mode);
    exe.setOutputDir(".");
    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
