if check_gl_derivatives()
{
    //If this device supports GL_OES_standard_derivatives, go to the next room
    room_goto_next();
}
else
{
    //...otherwise throw an error :(
    show_error("GL_OES_standard_derivatives unsupported on this device.\n ", true);
}