using UnityEngine;
using System.Collections;

public class Parrot : AbstractDate {

	public float cooldown_setting = 10;
	public int required_headbangcount = 2;
	float cooldown;
	public int headbangcount = 0;

	void Start() {
		cooldown = cooldown_setting;
	}

	public override void handlePlayerDid(PlayerAction pa) {
		switch(pa) {
			case PlayerAction.HEADBANG:
				headbangcount++;
				if(headbangcount >= required_headbangcount) {
					state = DateState.HAPPY;
				}
				break;
		}
	}

	void Update() {
		if(state == DateState.HAPPY) {
			cooldown -= Time.deltaTime;
			if(cooldown < 0) {
				state = DateState.NORMAL;
			}
		}
	}
}
