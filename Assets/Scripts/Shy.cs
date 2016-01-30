using UnityEngine;
using System.Collections;


public class Shy : AbstractDate {
	
	public float happyness = 0;
	public float target_happyness = 8f;
	public float decipate = 1f;

	public override void handlePlayerDid(PlayerAction pa) {
		switch(pa) {
			case PlayerAction.BACKOFF:
			case PlayerAction.MOVE_FORWARD:
				happyness -= 2;
				happyness = Mathf.Max(0, happyness);
				break;
		}
	}

	void Update() {
		happyness += Time.deltaTime * decipate;
		happyness = Mathf.Min(target_happyness, happyness);
		DateState beforestate = state;
		if(happyness > target_happyness - 2) {
			state = DateState.HAPPY;
		} else {
			state = DateState.UNHAPPY;
		}
		if(beforestate != state) {
			updateState();
		}
	}
}
