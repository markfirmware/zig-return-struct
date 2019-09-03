pub fn main() anyerror!void {
    var current_el = asm("mrs %[current_el], CurrentEL"
        : [current_el] "=r" (-> usize));
    warn("CurrentEL {x} exception level {}\n", current_el, current_el >> 2 & 0x3);

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
