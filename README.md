# wasm4-zig

idiomatic zig wasm4 template

## todo:

- it would be nice to provide formatted printing
  - [ ] use `std.fmt.format()` to write to a BufferedWriter to a custom output stream that prints using `traceUtf8()`. This does not require any allocation beyond the stack space used for the BufferedWriter and does not have length limitations, although log messages may spill into multiple lines
  - [ ] in the root file, do `usingnamespace @import("wasm4.zig").root` and in wasm4.zig, provide a `pub const root = struct {}` containing things like a `log` function to allow you to use `std.log`
