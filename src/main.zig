pub fn main() anyerror!void {
    var sctlr_el1 = asm("mrs %[sctlr_el1], sctlr_el1"
        : [sctlr_el1] "=r" (-> usize));
    warn("sctlr_el1 0x{x}\n", sctlr_el1);

    a = Bitmap.init();
    std.debug.warn("{}\n", a);
    b = Bitmap.init();
    std.debug.warn("{}\n", b);
    c = Bitmap.init();
    std.debug.warn("{}\n", c);
}

var a: Bitmap = undefined;
var b: Bitmap = undefined;
var c: Bitmap = undefined;

const Bitmap = @import("bitmap.zig").Bitmap;
const std = @import("std");
const warn = @import("std").debug.warn;
