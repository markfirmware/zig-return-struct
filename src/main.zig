
pub fn main() void {
    warn("program start");
    pollData();
    warn("program end - no exceptions encountered");
}

fn pollData() void {
    if (poll()) |event_data| {
        const buf = event_data;
        _ = buf[buf.len - 1]; // this causes ldur q0 to be generated
    }
}

var poll_data_buf: [50]u8 = undefined;
fn poll() ?[]u8 {
    return poll_data_buf[0..];
}

const warn = @import("std").debug.warn;
