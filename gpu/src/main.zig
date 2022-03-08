//! WebGPU interface for Zig
//!
//! # Coordinate Systems
//!
//! * Y-axis is up in normalized device coordinate (NDC): point(-1.0, -1.0) in NDC is located at
//!   the bottom-left corner of NDC. In addition, x and y in NDC should be between -1.0 and 1.0
//!   inclusive, while z in NDC should be between 0.0 and 1.0 inclusive. Vertices out of this range
//!   in NDC will not introduce any errors, but they will be clipped.
//! * Y-axis is down in framebuffer coordinate, viewport coordinate and fragment/pixel coordinate:
//!   origin(0, 0) is located at the top-left corner in these coordinate systems.
//! * Window/present coordinate matches framebuffer coordinate.
//! * UV of origin(0, 0) in texture coordinate represents the first texel (the lowest byte) in
//!   texture memory.
//!
//! Note: WebGPU’s coordinate systems match DirectX’s coordinate systems in a graphics pipeline.
//!
//! # Reference counting
//!
//! TODO: docs
//!
const std = @import("std");
pub const Interface = @import("Interface.zig");
pub const RequestAdapterOptions = Interface.RequestAdapterOptions;
pub const RequestAdapterErrorCode = Interface.RequestAdapterErrorCode;
pub const RequestAdapterError = Interface.RequestAdapterError;
pub const RequestAdapterResponse = Interface.RequestAdapterResponse;

pub const NativeInstance = @import("NativeInstance.zig");

pub const Adapter = @import("Adapter.zig");
pub const Device = @import("Device.zig");
pub const Surface = @import("Surface.zig");
pub const Limits = @import("Limits.zig");

pub const FeatureName = @import("feature_name.zig").FeatureName;

test "syntax" {
    _ = Interface;
    _ = NativeInstance;

    _ = Adapter;
    _ = Device;
    _ = Surface;
    _ = Limits;

    _ = FeatureName;
}