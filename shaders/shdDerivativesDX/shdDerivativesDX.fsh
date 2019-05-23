//GM doesn't usually enable standard derivative functions, but we can force it on
#extension GL_OES_standard_derivatives : require

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float colourGetIntensity(vec4 colour)
{
    return (colour.r + colour.g + colour.b)/3.0;
}

void main()
{
    gl_FragColor = v_vColour*texture2D(gm_BaseTexture, v_vTexcoord);
    
    float intensity = colourGetIntensity(gl_FragColor);
    float dx = dFdx(intensity);
    
    //dFdx(intensity)  =  F(x+1,y) - F(x,y)  =  intensity(x+1,y) - intensity(x,y)
    
    dx = 0.5 + 0.5*dx;
    gl_FragColor = vec4(dx, dx, dx, 1.0);
}