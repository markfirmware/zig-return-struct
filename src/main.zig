pub fn main() anyerror!void {
//  var current_el = asm("mrs %[current_el], CurrentEL"
//      : [current_el] "=r" (-> usize));
//  warn("CurrentEL {x} exception level {}\n", current_el, current_el >> 2 & 0x3);

    var x: u32 = 1;
    var y: u32 = 0;
    var z = x / y;

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

const release_tag = "0.1";
