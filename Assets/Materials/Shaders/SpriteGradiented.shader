// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:35096,y:32065,varname:node_1873,prsc:2|emission-5481-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:32551,y:32729,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32812,y:32818,cmnt:RGB,varname:node_1086,prsc:2|A-4805-RGB,B-5983-RGB,C-5376-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32551,y:32915,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32551,y:33079,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:33650,y:32849,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32879,y:32991,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A,C-5376-A,D-5441-OUT;n:type:ShaderForge.SFN_Color,id:4924,x:33687,y:34092,ptovrint:False,ptlb:GColor1,ptin:_GColor1,varname:_GColor1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:3381,x:33682,y:34302,ptovrint:False,ptlb:GColor2,ptin:_GColor2,varname:_GColor2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:27,x:33682,y:34494,ptovrint:False,ptlb:GColor3,ptin:_GColor3,varname:_GColor3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Code,id:2900,x:34471,y:33963,varname:node_2900,prsc:2,code:ZgBsAG8AYQB0ADMAIABhACAAPQAgAGwAZQByAHAAKAAgAHMAdABhAHIAdAAsACAAbQBpAGQALAAgAHQAIAApADsACgBmAGwAbwBhAHQAMwAgAGIAIAA9ACAAbABlAHIAcAAoACAAbQBpAGQALAAgAGUAbgBkACwAIAB0ACAAKQA7AAoAcgBlAHQAdQByAG4AIABsAGUAcgBwACAAKAAgAGEALAAgAGIALAAgAHQAIAApADsA,output:2,fname:TriGradient,width:421,height:132,input:2,input:2,input:2,input:0,input_1_label:start,input_2_label:mid,input_3_label:end,input_4_label:t|A-4924-RGB,B-3381-RGB,C-27-RGB,D-4162-OUT;n:type:ShaderForge.SFN_TexCoord,id:120,x:33896,y:34551,varname:node_120,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9068,x:34188,y:32730,varname:node_9068,prsc:2|A-1749-OUT,B-2900-OUT,C-2572-OUT;n:type:ShaderForge.SFN_Rotator,id:856,x:34160,y:34490,varname:node_856,prsc:2|UVIN-120-UVOUT,ANG-7114-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4162,x:34357,y:34406,varname:node_4162,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-856-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:7114,x:33942,y:34729,ptovrint:False,ptlb:rotateGradient,ptin:_rotateGradient,varname:_rotateGradient,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Code,id:5441,x:34689,y:34196,varname:node_5441,prsc:2,code:ZgBsAG8AYQB0ADMAIABhACAAPQAgAGwAZQByAHAAKAAgAHMAdABhAHIAdAAsACAAbQBpAGQALAAgAHQAIAApADsACgBmAGwAbwBhAHQAMwAgAGIAIAA9ACAAbABlAHIAcAAoACAAbQBpAGQALAAgAGUAbgBkACwAIAB0ACAAKQA7AAoAcgBlAHQAdQByAG4AIABsAGUAcgBwACAAKAAgAGEALAAgAGIALAAgAHQAIAApADsA,output:0,fname:TriGradientALPHA,width:421,height:132,input:0,input:0,input:0,input:0,input_1_label:start,input_2_label:mid,input_3_label:end,input_4_label:t|A-4924-A,B-3381-A,C-27-A,D-4162-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2572,x:33452,y:33075,ptovrint:False,ptlb:mutliplier,ptin:_mutliplier,varname:_mutliplier,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:6920,x:34444,y:32781,varname:node_6920,prsc:2|VAL-9068-OUT,EXP-5775-OUT;n:type:ShaderForge.SFN_Add,id:5481,x:34704,y:32683,varname:node_5481,prsc:2|A-9068-OUT,B-6920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5775,x:34270,y:32929,ptovrint:False,ptlb:pow,ptin:_pow,varname:_pow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:4805-5983-4924-3381-27-7114-2572-5775;pass:END;sub:END;*/

Shader "Cloisterlife/SpriteGradiented" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _GColor1 ("GColor1", Color) = (0.5,0.5,0.5,1)
        _GColor2 ("GColor2", Color) = (0.5,0.5,0.5,1)
        _GColor3 ("GColor3", Color) = (0.5,0.5,0.5,1)
        _rotateGradient ("rotateGradient", Float ) = 0
        _mutliplier ("mutliplier", Float ) = 1
        _pow ("pow", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform float4 _GColor1;
            uniform float4 _GColor2;
            uniform float4 _GColor3;
            float3 TriGradient( float3 start , float3 mid , float3 end , float t ){
            float3 a = lerp( start, mid, t );
            float3 b = lerp( mid, end, t );
            return lerp ( a, b, t );
            }
            
            uniform float _rotateGradient;
            float TriGradientALPHA( float start , float mid , float end , float t ){
            float3 a = lerp( start, mid, t );
            float3 b = lerp( mid, end, t );
            return lerp ( a, b, t );
            }
            
            uniform float _mutliplier;
            uniform float _pow;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_856_ang = _rotateGradient;
                float node_856_spd = 1.0;
                float node_856_cos = cos(node_856_spd*node_856_ang);
                float node_856_sin = sin(node_856_spd*node_856_ang);
                float2 node_856_piv = float2(0.5,0.5);
                float2 node_856 = (mul(i.uv0-node_856_piv,float2x2( node_856_cos, -node_856_sin, node_856_sin, node_856_cos))+node_856_piv);
                float node_4162 = node_856.r;
                float node_603 = (_MainTex_var.a*_Color.a*i.vertexColor.a*TriGradientALPHA( _GColor1.a , _GColor2.a , _GColor3.a , node_4162 )); // A
                float3 node_9068 = (((_MainTex_var.rgb*_Color.rgb*i.vertexColor.rgb)*node_603)*TriGradient( _GColor1.rgb , _GColor2.rgb , _GColor3.rgb , node_4162 )*_mutliplier);
                float3 emissive = (node_9068+pow(node_9068,_pow));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_603);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
