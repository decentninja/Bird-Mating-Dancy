using UnityEngine;
using System.Collections;

public class SceneTransitioner : MonoBehaviour {

	bool fired = false;

	public Transform DirLight;
	public Transform DirLightOrigin;
	public Transform DirLightTarget;
	float dirLightIntensity;
	float dirLightTargetIntensity;
	Color dirLightTargetColor;
	Color dirLightColor;


	public Camera cam;

	public AnimationCurve transition1;
	float transitionstart = 0;

	Color skybox1skyC;
	Color skybox1horizonC;

	Color skybox2skyC;
	Color skybox2horizonC;

	float sunRadiusB1, sunRadiusA1;
	float sunRadiusB2, sunRadiusA2;

	float sunIntensity1, sunIntensity2;

	public float lerprate = 0.05f;

	public Material skybox1, skybox2;

	Material skybox;

	public Transform destination2;
	Vector3 origin;

	// Use this for initialization
	void Start () {

		skybox = RenderSettings.skybox;

		skybox1skyC = skybox1.GetColor("_SkyColor");
		skybox1horizonC = skybox1.GetColor("_HorizonColor");
		sunRadiusA1 = skybox1.GetFloat("_SunRadiusA");
		sunRadiusB1 = skybox1.GetFloat("_SunRadiusB");
		sunIntensity1 = skybox1.GetFloat("_SunIntensity");

		skybox2skyC = skybox2.GetColor("_SkyColor");
		skybox2horizonC = skybox2.GetColor("_HorizonColor");
		sunRadiusA2 = skybox2.GetFloat("_SunRadiusA");
		sunRadiusB2 = skybox2.GetFloat("_SunRadiusB");
		sunIntensity2 = skybox2.GetFloat("_SunIntensity");

		//DirLightOrigin = transform;
		//DirLightOrigin = DirLight;
		dirLightColor = DirLightOrigin.GetComponent<Light>().color;
		dirLightTargetColor = DirLightTarget.GetComponent<Light>().color;
		dirLightIntensity = DirLightOrigin.GetComponent<Light>().intensity;
		dirLightTargetIntensity = DirLightTarget.GetComponent<Light>().intensity;



		SkyTransition();

		Light dirL = DirLight.GetComponent<Light>();
		dirL.intensity = dirLightIntensity;
		dirL.color = dirLightColor;

		skybox.SetColor("_SkyColor", skybox1skyC);
		skybox.SetColor("_HorizonColor", skybox1horizonC);
		skybox.SetFloat("_SunRadiusA", sunRadiusA1);
		skybox.SetFloat("_SunRadiusB", sunRadiusB1);
		skybox.SetFloat("_SunIntensity", sunIntensity1);
		//RenderSettings.skybox = 	

		DirLight.rotation = DirLightOrigin.rotation;
		DirLight.position = DirLightOrigin.position;


	}

	public void Transition() {
		if(fired) return;
		fired = true;

		transitionstart = Time.time;
		origin = cam.transform.position;
	}
	
	// Update is called once per frame
	void Update () {





		if(Input.GetMouseButtonDown(0)) {
			

			Transition();

		}

		if(transitionstart != 0)  {
			SkyTransition();
			MoveCamera();

		}

	
	}

	void MoveCamera() {

		float e = transition1.Evaluate((Time.time-transitionstart));

		cam.transform.position = Vector3.Lerp(origin, destination2.position, (Time.time-transitionstart)*lerprate*e);





	}

	void SkyTransition() {
		
		float e = transition1.Evaluate((Time.time-transitionstart));
		float t = (Time.time-transitionstart)*lerprate*e;

		//TEST
		skybox.SetColor("_SkyColor", Color.Lerp(skybox1skyC, skybox2skyC, t));
		skybox.SetColor("_HorizonColor", Color.Lerp(skybox1horizonC, skybox2horizonC, t));
		skybox.SetFloat("_SunRadiusA", Mathf.Lerp(sunRadiusA1, sunRadiusA2, t));
		skybox.SetFloat("_SunRadiusB", Mathf.Lerp(sunRadiusB1, sunRadiusB2, t));
		skybox.SetFloat("_SunIntensity", Mathf.Lerp(sunIntensity1, sunIntensity2, t));
		//RenderSettings.skybox = 	

		DirLight.rotation = Quaternion.Lerp(DirLightOrigin.rotation, DirLightTarget.rotation, t);
		DirLight.position = Vector3.Lerp(DirLight.position, DirLightTarget.position, t);

		Light dirL = DirLight.GetComponent<Light>();
		Light dirTL = DirLightTarget.GetComponent<Light>();

		dirL.intensity = Mathf.Lerp(dirLightIntensity, dirLightTargetIntensity, t);
		dirL.color = Color.Lerp(dirLightColor, dirLightTargetColor, t);

	}




}
