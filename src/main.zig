
pub fn main() void {
    var q0_register: u128 = undefined;
    warn("program start\n");
    asm volatile("ldur q0, [sp, #-24]");
    warn("program end - no exceptions encountered\n");
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
