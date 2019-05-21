//Standard derivative functions don't work so well without interpolation
gpu_set_tex_filter(true);

draw_sprite_ext(sTest, 0,   157,  55,   7, 7, 0,   c_white, 1);

//Demo for dFdx()
shader_set(shdDerivativesDX);
draw_sprite_ext(sTest, 0,   517,  55,   7, 7, 0,   c_white, 1);

//Demo for dFdy()
shader_set(shdDerivativesDY);
draw_sprite_ext(sTest, 0,   157, 415,   7, 7, 0,   c_white, 1);

//Demo for fwidth()
shader_set(shdDerivativesFWidth);
draw_sprite_ext(sTest, 0,   517, 415,   7, 7, 0,   c_white, 1);

shader_reset();

//Reset texture interpolation
gpu_set_tex_filter(false);



//Debug text
draw_text(872, 220, "dFdx()");
draw_text(872, 580, "fwidth()");
draw_text(  8,   8, "GLSL ES standard derivative functions (using GL_OES_standard_derivatives)\n@jujuadams 2019/05/21");
draw_set_halign(fa_right);
draw_text(152, 580, "dFdy()");
draw_set_halign(fa_left);