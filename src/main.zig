pub fn main() anyerror!void {
    var a = Bitmap.init();
    var b = Bitmap.init();
    var c = Bitmap.init();
    std.debug.warn("{}\n", a);
}

const Bitmap = @import("bitmap.zig").Bitmap;
const std = @import("std");
