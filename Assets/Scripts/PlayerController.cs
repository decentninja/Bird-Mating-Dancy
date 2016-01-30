using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

	public GameObject[] levels;
	public int level = -1;
	GameObject active_level;

	[FMODUnity.EventRef]
	public string music = "event:/Environment/Level1(Electric wire)/Level1_Music";

	void Start() {
		FMODUnity.RuntimeManager.PlayOneShot(music);
		Progress();
	}

	void Update() {
		if(Input.GetKeyDown(KeyCode.Space)) {
			Application.LoadLevel(Application.loadedLevel);
		}
		transform.position = Vector3.Lerp(
			transform.position,
			active_level.transform.position,
			Time.deltaTime
		);
	}

	public void Progress() {
		if(active_level) {
			active_level.transform.Find("Player").gameObject.SetActive(false);
			active_level.transform.Find("TargetBird").gameObject.SetActive(false);
		}
		level++;
		active_level = levels[level];
		active_level.transform.Find("Player").gameObject.SetActive(true);
	}

}
