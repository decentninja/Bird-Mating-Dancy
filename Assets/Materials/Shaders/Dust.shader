// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:34352,y:32826,varname:node_1873,prsc:2|emission-1749-OUT,clip-2904-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:32551,y:32729,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,tex:ffa9c02760c2b4e8eb9814ec06c4b05b,ntxv:0,isnm:False|UVIN-7325-UVOUT;n:type:ShaderForge.SFN_Color,id:5983,x:32551,y:32915,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32551,y:33079,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:33650,y:32849,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-6135-OUT,B-5376-RGB;n:type:ShaderForge.SFN_Tex2d,id:2146,x:32858,y:33401,ptovrint:False,ptlb:ShadowPattern,ptin:_ShadowPattern,varname:_ShadowPattern,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1170-UVOUT;n:type:ShaderForge.SFN_FragmentPosition,id:5098,x:32235,y:33502,varname:node_5098,prsc:2;n:type:ShaderForge.SFN_Append,id:8302,x:32446,y:33360,varname:node_8302,prsc:2|A-5098-X,B-5098-Y;n:type:ShaderForge.SFN_Vector1,id:379,x:33374,y:33283,varname:node_379,prsc:2,v1:5;n:type:ShaderForge.SFN_If,id:248,x:33233,y:33025,varname:node_248,prsc:2|A-4805-R,B-2146-R;n:type:ShaderForge.SFN_Panner,id:7325,x:32284,y:32807,varname:node_7325,prsc:2,spu:1,spv:1|UVIN-315-UVOUT,DIST-8000-TSL;n:type:ShaderForge.SFN_TexCoord,id:315,x:32012,y:32797,varname:node_315,prsc:2,uv:0;n:type:ShaderForge.SFN_Power,id:9000,x:33154,y:32780,varname:node_9000,prsc:2|VAL-4805-R,EXP-4805-G;n:type:ShaderForge.SFN_Power,id:6135,x:33439,y:32755,varname:node_6135,prsc:2|VAL-4318-OUT,EXP-6977-OUT;n:type:ShaderForge.SFN_Multiply,id:8121,x:32828,y:32643,varname:node_8121,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6977,x:33113,y:32921,varname:node_6977,prsc:2,v1:300;n:type:ShaderForge.SFN_Time,id:8000,x:32040,y:32990,varname:node_8000,prsc:2;n:type:ShaderForge.SFN_Add,id:4318,x:33230,y:32618,varname:node_4318,prsc:2|A-910-OUT,B-9000-OUT;n:type:ShaderForge.SFN_Vector1,id:910,x:33003,y:32652,varname:node_910,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Panner,id:1170,x:32698,y:33307,varname:node_1170,prsc:2,spu:1,spv:1|UVIN-8302-OUT,DIST-8133-OUT;n:type:ShaderForge.SFN_Length,id:9695,x:33850,y:32965,varname:node_9695,prsc:2|IN-1749-OUT;n:type:ShaderForge.SFN_Noise,id:5247,x:33091,y:33267,varname:node_5247,prsc:2|XY-2224-OUT;n:type:ShaderForge.SFN_Divide,id:2224,x:32928,y:33119,varname:node_2224,prsc:2|A-1170-UVOUT,B-7340-OUT;n:type:ShaderForge.SFN_Vector1,id:7340,x:32151,y:33312,varname:node_7340,prsc:2,v1:150;n:type:ShaderForge.SFN_Blend,id:2904,x:34061,y:32965,varname:node_2904,prsc:2,blmd:1,clmp:True|SRC-9695-OUT,DST-2146-R;n:type:ShaderForge.SFN_Divide,id:8133,x:32401,y:33146,varname:node_8133,prsc:2|A-8000-T,B-7340-OUT;proporder:4805-5983-2146;pass:END;sub:END;*/

Shader "Cloisterlife/Dust" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ShadowPattern ("ShadowPattern", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _ShadowPattern; uniform float4 _ShadowPattern_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_8000 = _Time + _TimeEditor;
                float2 node_7325 = (i.uv0+node_8000.r*float2(1,1));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7325, _MainTex));
                float3 node_1749 = (pow((0.01+pow(_MainTex_var.r,_MainTex_var.g)),300.0)*i.vertexColor.rgb); // Premultiply Alpha
                float node_7340 = 150.0;
                float2 node_1170 = (float2(i.posWorld.r,i.posWorld.g)+(node_8000.g/node_7340)*float2(1,1));
                float4 _ShadowPattern_var = tex2D(_ShadowPattern,TRANSFORM_TEX(node_1170, _ShadowPattern));
                clip(saturate((length(node_1749)*_ShadowPattern_var.r)) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = node_1749;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _ShadowPattern; uniform float4 _ShadowPattern_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_8000 = _Time + _TimeEditor;
                float2 node_7325 = (i.uv0+node_8000.r*float2(1,1));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7325, _MainTex));
                float3 node_1749 = (pow((0.01+pow(_MainTex_var.r,_MainTex_var.g)),300.0)*i.vertexColor.rgb); // Premultiply Alpha
                float node_7340 = 150.0;
                float2 node_1170 = (float2(i.posWorld.r,i.posWorld.g)+(node_8000.g/node_7340)*float2(1,1));
                float4 _ShadowPattern_var = tex2D(_ShadowPattern,TRANSFORM_TEX(node_1170, _ShadowPattern));
                clip(saturate((length(node_1749)*_ShadowPattern_var.r)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
