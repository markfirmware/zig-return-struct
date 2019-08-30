pub fn main() anyerror!void {
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
