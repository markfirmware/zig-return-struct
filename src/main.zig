pub fn main() void {
    pollData();
}

fn pollData() void {
    if (poll()) |event_data| {
        var buf = event_data;
        const rssi = buf[buf.len - 1]; // this is required to break
    }
}

pub var poll_data_buf: [50]u8 = undefined;
pub fn poll() ?[]u8 {
    return poll_data_buf[0..];
}
