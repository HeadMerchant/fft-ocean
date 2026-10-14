#version 410
uniform vec4 mvp[4];
uniform vec4 proj[4];
uniform sampler2D displacement;

layout(location = 0) in vec2 position;
layout(location = 0) out vec2 uv;
void main() {
    vec2 inPos = position - .5;
    inPos *= 128;
    vec4 pos = vec4(inPos.x, 0., inPos.y, 1.);
	vec3 displacement = texture(displacement, position).rgb;
	pos.xyz += displacement;
	gl_Position = mat4(mvp[0], mvp[1], mvp[2], mvp[3]) * pos;
    uv = position;
}

