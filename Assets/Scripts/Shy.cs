using UnityEngine;
using System.Collections;


public class Shy : AbstractDate {
	
	float happyness;
	public float starting_happyness = 10f;
	public float decipate = 1f;

	void Start() {
		state = DateState.HAPPY;
		happyness = starting_happyness;
	}

	public override void handlePlayerDid(PlayerAction pa) {
		switch(pa) {
			case PlayerAction.BACKOFF:
			case PlayerAction.MOVE_FORWARD:
				happyness -= 1;
				happyness = Mathf.Max(0, happyness);
				break;
		}
	}

	void Update() {
		happyness += Time.deltaTime * decipate;
		happyness = Mathf.Min(starting_happyness, happyness);
		if(happyness < 8) {
			state = DateState.HAPPY;
		} else {
			state = DateState.UNHAPPY;
		}
	}
}
