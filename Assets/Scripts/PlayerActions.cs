using UnityEngine;
using System.Collections;

public class PlayerActions : MonoBehaviour {

	public float jumpDistance = 5f;
	public Date date;

	void Update () {
		if(Input.GetKeyDown(KeyCode.LeftArrow)) {
			transform.Translate(-jumpDistance, 0, 0);
			date.playerJumped();
		}
		if(Input.GetKeyDown(KeyCode.RightArrow)) {
			transform.Translate(jumpDistance, 0, 0);
			date.playerJumped();
		}
	}
}
