//GM doesn't usually enable standard derivative functions, but we can force it on
#extension GL_OES_standard_derivatives : enable

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
    float dy = dFdy(intensity);
    
    //dFdy(intensity)  =  F(x,y+1) - F(x,y)  =  intensity(x,y+1) - intensity(x,y)
    
    dy = 0.5 + 0.5*dy;
    gl_FragColor = vec4(dy, dy, dy, 1.0);
}