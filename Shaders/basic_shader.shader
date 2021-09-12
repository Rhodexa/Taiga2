#shadertype vertex
#version 330 core

layout(location = 0) in vec4 vertexPos;
layout(location = 1) in vec2 u_tex_coord;
out vec2 v_tex_coord;
void main() {
	gl_Position = vertexPos;
	v_tex_coord = u_tex_coord;
}









#shadertype fragment
#version 330 core

in vec2 v_tex_coord;
uniform sampler2D u_Texture;
out vec4 color;
void main() {
	vec4 texColor = texture(u_Texture, v_tex_coord);
	color = texColor;
	//color = vec4(0.9, 0.16, 0.3, 1.0);
}