const w4 = @import("wasm4.zig");

const smiley = [8]u8{
    0b11000011,
    0b10000001,
    0b00100100,
    0b00100100,
    0b00000000,
    0b00100100,
    0b10011001,
    0b11000011,
};

export fn update() void {
    w4.DRAW_COLORS.* = 0x2;
    w4.text("Hello from Zig!", .{10, 10});

    const gamepad = w4.GAMEPAD1.*;
    if (gamepad.button_1) {
        w4.DRAW_COLORS.* = 0x4;
    }

    w4.blit(&smiley, .{76, 76}, .{8, 8}, .{ .bpp = .b1 });
    w4.text("Press X to blink", .{16, 90});
}
