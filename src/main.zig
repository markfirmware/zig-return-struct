pub fn main() anyerror!void {
    a = Bitmap.init();
    std.debug.warn("{}\n", a);
}

var a: Bitmap = undefined;

const Bitmap = @import("bitmap.zig").Bitmap;
const std = @import("std");
