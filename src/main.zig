
pub fn main() void {
    warn("program start\n", .{});
    var sctlr = asm("mrs %[sctlr], sctlr_el0"
        : [sctlr] "=r" (-> usize));
    warn("sctlr {x}\n", sctlr);
    asm volatile("ldur q0, [sp, #-24]");
//  var d0_register = asm("vmov %[d0_register], d0"
//      : [d0_register] "=r" (-> usize));
    warn("program end - no exceptions encountered\n", .{});
}

const warn = @import("std").debug.warn;
