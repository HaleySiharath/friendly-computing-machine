//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord; // position of grand pixle
varying vec4 v_vColour; // color (group of variables - 4 RGBA)

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor = vec4(0,0.4,0,1);
}
