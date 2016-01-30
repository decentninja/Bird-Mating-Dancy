using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

	public GameObject[] levels;
	public int level = -1;
	GameObject active_level;

	void Start() {
		progress();
	}

	void Update() {
		transform.position = Vector3.Lerp(
			transform.position,
			active_level.transform.position,
			Time.deltaTime
		);
	}

	public void progress() {
		if(active_level) {
			active_level.transform.Find("Player").gameObject.SetActive(false);
			active_level.transform.Find("TargetBird").gameObject.SetActive(false);
		}
		level++;
		active_level = levels[level];
		active_level.transform.Find("Player").gameObject.SetActive(true);
	}

}
