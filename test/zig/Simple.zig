const std = @import("std");

fn sayHi(name: []const u8) void {
    std.debug.print("Hi {s}!", .{name});
}

pub fn main() !void {
    sayHi("Andrew");

    // Some very simple nesting like the javascript example
    for (0..10) |i| {
        if (1 == i) {}
    }
}
