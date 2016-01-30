using UnityEngine;
using System.Collections;


public class PlayerActions : MonoBehaviour {

	public float jumpDistance = 5f;
	public AbstractDate date;
	public int level = 0;
	bool headbang = false;

	void Update () {
		if(Input.GetKeyDown(KeyCode.LeftArrow)) {
			transform.Translate(-jumpDistance, 0, 0);
			date.playerDid(PlayerAction.BACKOFF);
		}
		if(Input.GetKeyDown(KeyCode.RightArrow)) {
			transform.Translate(jumpDistance, 0, 0);
			date.playerDid(PlayerAction.MOVE_FORWARD);
		}
		if(level >= 1 && Input.GetKey(KeyCode.Space)) {
			headbang = true;
			Debug.Log("Head down");
		}
		if(headbang && !Input.GetKey(KeyCode.Space)) {
			headbang = false;
			Debug.Log("Head up");
			date.playerDid(PlayerAction.HEADBANG);
		}
	}
}
