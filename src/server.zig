const std = @import("std");

pub const Server = struct {
    pub const Config = struct {
        address: []const u8 = "127.0.0.1",
        port: u16 = 4221,
    };
    allocator: std.mem.Allocator,
    config: Config,

    pub fn init(allocator: std.mem.Allocator, config: Config) Server {
        return .{
            .allocator = allocator,
            .config = config,
        };
    }
};
