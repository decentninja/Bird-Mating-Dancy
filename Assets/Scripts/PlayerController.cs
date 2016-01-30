using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

	public GameObject[] levels;
	public int level = -1;
	GameObject active_level;
	public float cooldown_timer = 1000;
	float cooldown = 0;
	bool transition = false;

	[FMODUnity.EventRef]
	public string music = "event:/Environment/Level1(Electric wire)/Level1_Music";
	FMOD.Studio.EventInstance musicEV;
	public FMOD.Studio.ParameterInstance win, lose, happiness;

	void Start() {
		musicEV = FMODUnity.RuntimeManager.CreateInstance(music);
		musicEV.getParameter("Happiness", out happiness);
		musicEV.getParameter("win", out win);
		musicEV.getParameter("lose", out lose);
		musicEV.start();
		Progress();
	}

	void Update() {
		if(Input.GetKeyDown(KeyCode.Escape)) {
			Application.LoadLevel(Application.loadedLevel);
			musicEV.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
		}
		if(active_level) {
			transform.position = Vector3.Lerp(
				transform.position,
				active_level.transform.position,
				Time.deltaTime
			);
		}
		if(transition) {
			if(cooldown > 0) {
				cooldown -= Time.deltaTime;
			} else {
				transition = false;
				win.setValue(0);
			}
		}
	}

	public void Progress() {
		if(active_level) {
			active_level.transform.Find("Player").gameObject.SetActive(false);
			active_level.transform.Find("TargetBird").gameObject.SetActive(false);
		}
		level++;
		if(level != 0) {
			win.setValue(1);
			transition = true;
			cooldown = cooldown_timer;
		}
		active_level = levels[level];
		active_level.transform.Find("Player").gameObject.SetActive(true);
	}

}
