
pub fn main() void {
    warn("program start\n");
    asm volatile("ldur q0, [sp, #-24]");
//  var d0_register = asm("vmov %[d0_register], d0"
//      : [d0_register] "=r" (-> usize));
    warn("program end - no exceptions encountere\n");
}

const warn = @import("std").debug.warn;
