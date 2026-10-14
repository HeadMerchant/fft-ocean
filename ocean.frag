#version 410
uniform sampler2D ocean_tex;
layout(location = 0) out vec4 frag_color;
layout(location = 0) in vec2 uv;

void main() {
	vec4 ocean = texture(ocean_tex, uv);
	frag_color = vec4(abs(ocean.rgb), 1.0);

// 	vec3 lightDir = ;


// float3 lightDir = -normalize(_SunDirection);
// float3 viewDir = normalize(_WorldSpaceCameraPos - f.data.worldPos);
// float3 halfwayDir = normalize(lightDir + viewDir);
// float depth = f.data.depth;
// float LdotH = DotClamped(lightDir, halfwayDir);
// float VdotH = DotClamped(viewDir, halfwayDir);


// float4 displacementFoam1 = UNITY_SAMPLE_TEX2DARRAY(_DisplacementTextures, float3(f.data.uv * _Tile0, 0)) * _DebugLayer0;
// displacementFoam1.a += _FoamSubtract0;
// float4 displacementFoam2 = UNITY_SAMPLE_TEX2DARRAY(_DisplacementTextures, float3(f.data.uv * _Tile1, 1)) * _DebugLayer1;
// displacementFoam2.a += _FoamSubtract1;
// float4 displacementFoam3 = UNITY_SAMPLE_TEX2DARRAY(_DisplacementTextures, float3(f.data.uv * _Tile2, 2)) * _DebugLayer2;
// displacementFoam3.a += _FoamSubtract2;
// float4 displacementFoam4 = UNITY_SAMPLE_TEX2DARRAY(_DisplacementTextures, float3(f.data.uv * _Tile3, 3)) * _DebugLayer3;
// displacementFoam4.a += _FoamSubtract3;
// float4 displacementFoam = displacementFoam1 + displacementFoam2 + displacementFoam3 + displacementFoam4;


// float2 slopes1 = UNITY_SAMPLE_TEX2DARRAY(_SlopeTextures, float3(f.data.uv * _Tile0, 0)) * _DebugLayer0;
// float2 slopes2 = UNITY_SAMPLE_TEX2DARRAY(_SlopeTextures, float3(f.data.uv * _Tile1, 1)) * _DebugLayer1;
// float2 slopes3 = UNITY_SAMPLE_TEX2DARRAY(_SlopeTextures, float3(f.data.uv * _Tile2, 2)) * _DebugLayer2;
// float2 slopes4 = UNITY_SAMPLE_TEX2DARRAY(_SlopeTextures, float3(f.data.uv * _Tile3, 3)) * _DebugLayer3;
// float2 slopes = slopes1 + slopes2 + slopes3 + slopes4;


// slopes *= _NormalStrength;
// float foam = lerp(0.0f, saturate(displacementFoam.a), pow(depth, _FoamDepthAttenuation));

// #ifdef NEW_LIGHTING
// float3 macroNormal = float3(0, 1, 0);
// float3 mesoNormal = normalize(float3(-slopes.x, 1.0f, -slopes.y));
// mesoNormal = normalize(lerp(float3(0, 1, 0), mesoNormal, pow(saturate(depth), _NormalDepthAttenuation)));
// mesoNormal = normalize(UnityObjectToWorldNormal(normalize(mesoNormal)));

// float NdotL = DotClamped(mesoNormal, lightDir);


// float a = _Roughness + foam * _FoamRoughnessModifier;
// float ndoth = max(0.0001f, dot(mesoNormal, halfwayDir));

// float viewMask = SmithMaskingBeckmann(halfwayDir, viewDir, a);
// float lightMask = SmithMaskingBeckmann(halfwayDir, lightDir, a);

// float G = rcp(1 + viewMask + lightMask);

// float eta = 1.33f;
// float R = ((eta - 1) * (eta - 1)) / ((eta + 1) * (eta + 1));
// float thetaV = acos(viewDir.y);

// float numerator = pow(1 - dot(mesoNormal, viewDir), 5 * exp(-2.69 * a));
// float F = R + (1 - R) * numerator / (1.0f + 22.7f * pow(a, 1.5f));
// F = saturate(F);

// float3 specular = _SunIrradiance * F * G * Beckmann(ndoth, a);
// specular /= 4.0f * max(0.001f, DotClamped(macroNormal, lightDir));
// specular *= DotClamped(mesoNormal, lightDir);

// float3 envReflection = texCUBE(_EnvironmentMap, reflect(-viewDir, mesoNormal)).rgb;
// envReflection *= _EnvironmentLightStrength;

// float H = max(0.0f, displacementFoam.y) * _HeightModifier;
// float3 scatterColor = _ScatterColor;
// float3 bubbleColor = _BubbleColor;
// float bubbleDensity = _BubbleDensity;


// float k1 = _WavePeakScatterStrength * H * pow(DotClamped(lightDir, -viewDir), 4.0f) * pow(0.5f - 0.5f * dot(lightDir, mesoNormal), 3.0f);
// float k2 = _ScatterStrength * pow(DotClamped(viewDir, mesoNormal), 2.0f);
// float k3 = _ScatterShadowStrength * NdotL;
// float k4 = bubbleDensity;

// float3 scatter = (k1 + k2) * scatterColor * _SunIrradiance * rcp(1 + lightMask);
// scatter += k3 * scatterColor * _SunIrradiance + k4 * bubbleColor * _SunIrradiance;


// float3 output = (1 - F) * scatter + specular + F * envReflection;
// output = max(0.0f, output);
// output = lerp(output, _FoamColor, saturate(foam));

// #else
// slopes *= _NormalStrength;
// float3 normal = normalize(float3(-slopes.x, 1.0f, -slopes.y));
// normal = normalize(UnityObjectToWorldNormal(normalize(normal)));

// float ndotl = DotClamped(lightDir, normal);

// float3 diffuseReflectance = _DiffuseReflectance / PI;
// float3 diffuse = _LightColor0.rgb * ndotl * diffuseReflectance;

// // Schlick Fresnel
// float3 fresnelNormal = normal;
// fresnelNormal.xz *= _FresnelNormalStrength;
// fresnelNormal = normalize(fresnelNormal);
// float base = 1 - dot(viewDir, fresnelNormal);
// float exponential = pow(base, _FresnelShininess);
// float R = exponential + _FresnelBias * (1.0f - exponential);
// R *= _FresnelStrength;

// float3 fresnel = _FresnelColor * R;

// if (_UseEnvironmentMap) {
// float3 reflectedDir = reflect(-viewDir, normal);
// float3 skyCol = texCUBE(_EnvironmentMap, reflectedDir).rgb;
// float3 sun = _SunColor * pow(max(0.0f, DotClamped(reflectedDir, lightDir)), 500.0f);

// fresnel = skyCol.rgb * R;
// fresnel += sun * R;
// }


// float3 specularReflectance = _SpecularReflectance;
// float3 specNormal = normal;
// specNormal.xz *= _SpecularNormalStrength;
// specNormal = normalize(specNormal);
// float spec = pow(DotClamped(specNormal, halfwayDir), _Shininess) * ndotl;
// float3 specular = _LightColor0.rgb * specularReflectance * spec;

// // Schlick Fresnel but again for specular
// base = 1 - DotClamped(viewDir, halfwayDir);
// exponential = pow(base, 5.0f);
// R = exponential + _FresnelBias * (1.0f - exponential);

// specular *= R;


// float3 output = _Ambient + diffuse + specular + fresnel;
// output = lerp(output, _TipColor, saturate(foam));
// #endif
}
