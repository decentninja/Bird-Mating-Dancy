// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:34352,y:32826,varname:node_1873,prsc:2|emission-1749-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:32551,y:32729,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32812,y:32818,cmnt:RGB,varname:node_1086,prsc:2|A-4805-RGB,B-5983-RGB,C-5376-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32551,y:32915,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32551,y:33079,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:33650,y:32849,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT,C-4609-OUT,D-6287-OUT,E-6680-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32812,y:32992,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A,C-5376-A;n:type:ShaderForge.SFN_Tex2d,id:2146,x:32858,y:33401,ptovrint:False,ptlb:ShadowPattern,ptin:_ShadowPattern,varname:_ShadowPattern,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bad10b08bfd83c54abf8bed0af75175b,ntxv:0,isnm:False|UVIN-8302-OUT;n:type:ShaderForge.SFN_ViewVector,id:1570,x:33541,y:33559,varname:node_1570,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7712,x:33541,y:33696,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:5330,x:33797,y:33613,varname:node_5330,prsc:2,dt:3|A-1570-OUT,B-7712-OUT;n:type:ShaderForge.SFN_Power,id:4718,x:33746,y:33323,varname:node_4718,prsc:2|VAL-5330-OUT,EXP-1074-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5098,x:32235,y:33502,varname:node_5098,prsc:2;n:type:ShaderForge.SFN_Append,id:8302,x:32521,y:33430,varname:node_8302,prsc:2|A-5098-X,B-5098-Y;n:type:ShaderForge.SFN_Power,id:9007,x:33228,y:33157,varname:node_9007,prsc:2|VAL-4805-RGB,EXP-379-OUT;n:type:ShaderForge.SFN_Power,id:9384,x:33228,y:33292,varname:node_9384,prsc:2|VAL-2146-RGB,EXP-379-OUT;n:type:ShaderForge.SFN_Vector1,id:379,x:33047,y:33228,varname:node_379,prsc:2,v1:5;n:type:ShaderForge.SFN_Min,id:1904,x:33475,y:33228,varname:node_1904,prsc:2|A-9007-OUT,B-9384-OUT;n:type:ShaderForge.SFN_Lerp,id:6295,x:33690,y:33080,varname:node_6295,prsc:2|A-275-OUT,B-3141-OUT,T-4718-OUT;n:type:ShaderForge.SFN_Vector3,id:3141,x:33437,y:33118,varname:node_3141,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:275,x:33457,y:33336,varname:node_275,prsc:2|A-9007-OUT,B-9384-OUT;n:type:ShaderForge.SFN_ViewPosition,id:2337,x:32235,y:33737,varname:node_2337,prsc:2;n:type:ShaderForge.SFN_Distance,id:2038,x:32840,y:33650,varname:node_2038,prsc:2|A-5098-XYZ,B-2337-XYZ;n:type:ShaderForge.SFN_Multiply,id:5663,x:33981,y:33194,varname:node_5663,prsc:2|A-6287-OUT,B-4718-OUT;n:type:ShaderForge.SFN_ValueProperty,id:939,x:32840,y:33800,ptovrint:False,ptlb:distMulti,ptin:_distMulti,varname:_distMulti,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9966,x:33120,y:33629,varname:node_9966,prsc:2|A-2038-OUT,B-939-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6556,x:32810,y:34154,varname:node_6556,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:6329,x:33120,y:33851,varname:node_6329,prsc:2,frmn:1,frmx:20,tomn:0,tomx:1|IN-6805-OUT;n:type:ShaderForge.SFN_Code,id:6287,x:33784,y:33896,varname:node_6287,prsc:2,code:ZgBsAG8AYQB0ADMAIABhACAAPQAgAGwAZQByAHAAKAAgAHMAdABhAHIAdAAsACAAbQBpAGQALAAgAHQAIAApADsACgBmAGwAbwBhAHQAMwAgAGIAIAA9ACAAbABlAHIAcAAoACAAbQBpAGQALAAgAGUAbgBkACwAIAB0ACAAKQA7AAoAcgBlAHQAdQByAG4AIABsAGUAcgBwACAAKAAgAGEALAAgAGIALAAgAHQAIAApADsA,output:2,fname:Trilerp,width:421,height:132,input:2,input:2,input:2,input:0,input_1_label:start,input_2_label:mid,input_3_label:end,input_4_label:t|A-6878-OUT,B-8627-OUT,C-8393-OUT,D-6329-OUT;n:type:ShaderForge.SFN_Vector3,id:8393,x:33464,y:34180,varname:node_8393,prsc:2,v1:0.6,v2:0.6,v3:0.6;n:type:ShaderForge.SFN_Vector3,id:8627,x:33464,y:34065,varname:node_8627,prsc:2,v1:2,v2:2,v3:2;n:type:ShaderForge.SFN_Vector3,id:6878,x:33464,y:33955,varname:node_6878,prsc:2,v1:0.2,v2:0.1,v3:0;n:type:ShaderForge.SFN_ValueProperty,id:1074,x:34094,y:33462,ptovrint:False,ptlb:dotPower,ptin:_dotPower,varname:_dotPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_ConstantClamp,id:4609,x:33935,y:32959,varname:node_4609,prsc:2,min:0.01,max:1000|IN-6295-OUT;n:type:ShaderForge.SFN_Length,id:808,x:34152,y:33159,varname:node_808,prsc:2|IN-5663-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:6805,x:32969,y:33855,varname:node_6805,prsc:2,min:1,max:20|IN-9966-OUT;n:type:ShaderForge.SFN_Vector1,id:6680,x:33370,y:32972,varname:node_6680,prsc:2,v1:2;proporder:4805-5983-2146-939-1074;pass:END;sub:END;*/

Shader "Cloisterlife/SpriteCustom1" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ShadowPattern ("ShadowPattern", 2D) = "white" {}
        _distMulti ("distMulti", Float ) = 1
        _dotPower ("dotPower", Float ) = 8
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
            uniform sampler2D _ShadowPattern; uniform float4 _ShadowPattern_ST;
            uniform float _distMulti;
            float3 Trilerp( float3 start , float3 mid , float3 end , float t ){
            float3 a = lerp( start, mid, t );
            float3 b = lerp( mid, end, t );
            return lerp ( a, b, t );
            }
            
            uniform float _dotPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
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
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_603 = (_MainTex_var.a*_Color.a*i.vertexColor.a); // A
                float node_379 = 5.0;
                float3 node_9007 = pow(_MainTex_var.rgb,node_379);
                float2 node_8302 = float2(i.posWorld.r,i.posWorld.g);
                float4 _ShadowPattern_var = tex2D(_ShadowPattern,TRANSFORM_TEX(node_8302, _ShadowPattern));
                float3 node_9384 = pow(_ShadowPattern_var.rgb,node_379);
                float node_4718 = pow(abs(dot(viewDirection,normalDirection)),_dotPower);
                float3 node_6287 = Trilerp( float3(0.2,0.1,0) , float3(2,2,2) , float3(0.6,0.6,0.6) , (clamp((distance(i.posWorld.rgb,_WorldSpaceCameraPos)*_distMulti),1,20)*0.05263158+-0.05263158) );
                float3 emissive = ((_MainTex_var.rgb*_Color.rgb*i.vertexColor.rgb)*node_603*clamp(lerp((node_9007*node_9384),float3(1,1,1),node_4718),0.01,1000)*node_6287*2.0);
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
