//	3D Parallax Shader - 2.0
//------------------------------------
float4x4 WorldViewProj : WorldViewProjection;
float4x4 World : WorldIT;
float4 EyePos : EyePos;

//------------------------------------
float4 LightDir <> = {0.0f, 1.0f, 0.0f, 0.0f};
float4 LightCol <> = {1.0f, 1.0f, 1.0f, 1.0f};
float4 LightAmb <> = {0.3f, 0.3f, 0.3f, 1.0f};

//------------------------------------
texture baseMap
<
	string name = "x4.jpg";
>;

texture heightMap
<
	string name = "x4HTMAP.bmp";
>;

texture normalMap
<
	string name = "x4DOT3.bmp";
>;

//------------------------------------
technique Height
{
	pass p0 
	{		
		VertexShaderConstant[0] = <WorldViewProj>;
		VertexShaderConstant[4] = <World>;
		VertexShaderConstant[11] = <EyePos>;
		VertexShaderConstant[12] = <LightDir>;
		VertexShaderConstant[13] = <LightCol>;
		VertexShaderConstant[14] = <LightAmb>;

		VertexShader = asm
		{
			// Initilise Shader
			vs.1.1
			dcl_position	v0
			dcl_normal		v1
			dcl_tangent		v2
			dcl_binormal	v3
			dcl_texcoord	v4
			
			// Define Constants
			def c20, 1.0f, 0.5f, 0.0f, 0.0f
			
			// Transform Position to Clip
			m4x4 oPos, v0, c0
			
			// Move Light Vector to Object Space
			mov r0, c12
			m3x3 r4, r0, c4
			
			// Normalise Light Vector (r4)
			dp3 r0, r4, r4
			rsq r0, r0
			mul r4, r0, r4.xyz
			
			// Move Light Vector to Texture Space
			dp3 r0.x, r4, v2
			dp3 r0.y, r4, v3
			dp3 r0.z, r4, v1
			
			// Scale, Bias and Output Light Vector
			add r0, r0, c20.x
			mul oT4, r0, c20.y
			mov oD0, c13
			mov oD1, c14
			
			// Move Eye Position to Object Space
			mov r0, c11
			m3x3 r1, r0, c4
			
			// Compute Normalised Eye Vector (r1)
			sub r1, r1.xyz, v0
			dp3 r1.w, r1, r1
			rsq r1.w, r1.w
			mul r1, r1, r1.w
			
			// Move Eye Vector to Texture Space
			dp3 r0.x, r1, v2
			dp3 r0.y, r1, v3
			
			// Scale and Bias Eye Vector
			add r0, r0, c20.x
			mul oT3, r0, c20.y
			mov oT3.zw, c20.zw

			// Compute Normalised Half-Vector
			add r1, r1, r4
			dp3 r0, r1, r1
			rsq r0, r0
			mul r1, r1, r0
			
			// Move Half-Vector to Texture Space
			dp3 r0.x, r1, v2
			dp3 r0.y, r1, v3
			dp3 r0.z, r1, v1
			
			// Scale, Bias and Output Eye Vector
			add r0, r0, c20.x
			mul oT5, r0, c20.y
			//mov oT5, r0
			
			// Output Base Texture Coordinates
			mov oT0, v4
			mov oT1, v4
			mov oT2, v4
		};
		
		PixelShader = asm
		{
			// Initialise Shader
			ps.1.4
			def c0, 0.08f, 0.08f, 1.0f, 1.0f
			
			// Load Textures
			texcrd r0.rgb, t0
			texld r1, t1
			texcrd r3.rgb, t3
			
			// Multiply Shift by Height and Add to Base
			mul r3.rgb, r3_bx2, c0
			mul r3.rgb, r3, r1_bias
			add r3.rgb, r3, r0
			
			// Next Phase
			phase
			
			// Load Maps Based on Perturbation
			texld r0, r3
			texld r2, r3
			texcrd r4.rgb, t4
			texcrd r5.rgb, t5
			
			// DOT3 Lighting Calculations
			dp3_sat r4, r2_bx2, r4_bx2
			dp3_sat r5, r2_bx2, r5_bx2
			
			// Specular Power and Combination
			mul r5, r5, r5
			mul r5, r5, r5
			mul r5, r5, r0.a
			mad r5, r5, r5, r4
			
			// Combine and Colour Lighting
			mad r5, r5, v0, v1
			
			// Multiply Lighting by Diffuse
			mul r0, r0, r5
		};

		Texture[0] = <baseMap>;
		MinFilter[0] = Linear;
		MagFilter[0] = Linear;
		MipFilter[0] = Linear;

		Texture[1] = <heightMap>;
		MinFilter[1] = Linear;
		MagFilter[1] = Linear;
		MipFilter[1] = Linear;
		
		Texture[2] = <normalMap>;
		MinFilter[2] = Linear;
		MagFilter[2] = Linear;
		MipFilter[2] = Linear;
		
		//Texture[3] = Parallax Offset
		//Texture[4] = Light Position in Texture Space
		//Texture[5] = Half-Vector in Texture Space
	}
}