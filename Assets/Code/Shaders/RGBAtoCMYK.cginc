void RGBAtoCMYK_float (in float4 rgba, out float4 cmyk) {
    const float r = rgba.r;
    const float g = rgba.g;
    const float b = rgba.b;
    const float k = min(1.0 - r, min(1.0 - g, 1.0 - b));
    cmyk = float4(0, 0, 0, 0);
    const float inv_k = 1.0 - k;
    if (inv_k != 0.0) {
        cmyk.x = (1.0 - r - k) / inv_k;
        cmyk.y = (1.0 - g - k) / inv_k;
        cmyk.z = (1.0 - b - k) / inv_k;
    }
    cmyk.w = k;
    cmyk = clamp(cmyk, 0.0, 1.0);
}