//GM doesn't usually enable standard derivative functions, but we can force it on
#extension GL_OES_standard_derivatives : enable

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0); //Default to red
    
    #ifdef GL_OES_standard_derivatives
    gl_FragColor = vec4(0.0, 1.0, 0.0, 1.0); //If GL_OES_standard_derivatives is enabled, use green instead
    #endif
}