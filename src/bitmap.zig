pub const Bitmap = struct {
    frame_buffer: *u8,
    pixel_array: [*]u8,
    width: u32,
    another: u32,

    pub fn init() Bitmap {
        var bm: Bitmap = undefined;
        bm.width = 100;
        return bm;
    }
};
