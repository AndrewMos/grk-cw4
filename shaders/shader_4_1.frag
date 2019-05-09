#version 430 core

uniform vec3 objectColor;

uniform vec3 light_direction;

uniform mat4 obj;

uniform vec3 cameraPos;

in vec3 interpNormal;
in vec4 worldspacenormal;
in vec4 vertPosition_ws;


void main()
{
	vec3 viewDir = normalize(vertPosition_ws.xyz - cameraPos);
	
	//HERE
	//vec3 ref = reflect( );
	//vec3 specular = viewDir *  ref * 0.5;

	float intensity = max(0.0, dot(worldspacenormal.xyz, -light_direction));

	gl_FragColor = vec4(objectColor * intensity , 1.0);
}