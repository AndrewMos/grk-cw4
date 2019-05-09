#version 430 core

layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec2 vertexTexCoord;
layout(location = 2) in vec3 vertexNormal;

uniform mat4 transformation;

out vec3 interpNormal;
uniform mat4 model_matrix;
out vec4 worldspacenormal;
out vec4 vertPosition_ws;

void main()
{
	vertPosition_ws = model_matrix * vec4(vertexPosition, 1.0);



	gl_Position = transformation * vec4(vertexPosition, 1.0);
	interpNormal = vertexNormal;
	worldspacenormal = model_matrix * vec4(vertexNormal, 0);
}
