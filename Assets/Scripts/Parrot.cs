using UnityEngine;
using System.Collections;

public class Parrot : AbstractDate {

	public float cooldown_setting = 10;
	public int required_headbangcount = 2;
	public float cooldown;
	public int headbangcount = 0;
	public bool headbanging = false;
	public Animator[] animators;
	public float timefornextbang = 0;
	public float beatseconds = 1;
	public bool didbangontime;

	void Start() {
		cooldown = cooldown_setting;
	}

	public override void handlePlayerDid(PlayerAction pa) {
		switch(pa) {
			case PlayerAction.HEADBANG:
				if(state != DateState.HAPPY) {
					Debug.Log("headbang");
					if(headbanging) {
						Debug.Log("headbang hit");
						didbangontime = timefornextbang > 0;
						headbangcount++;
						/*if(didbangontime) {
							Debug.Log("double headbang");
							fail();
						}*/
					}
					if(!headbanging) {
						Debug.Log("Start new headbanging try");
						headbanging = true;
						foreach (var part in animators) {
							part.SetBool("Angry", false);
							part.SetBool("Headbang", true);
							part.SetBool("Normal", false);
						}
						timefornextbang = beatseconds;
						didbangontime = false;
					}
					if(headbangcount >= required_headbangcount) {
						Debug.Log("headbanging good");
						headbanging = false;
						state = DateState.HAPPY;
						cooldown = cooldown_setting;
						foreach(var part in animators) {
							part.SetBool("Headbang", false);
							part.SetBool("Happy", true);
						}
					}
				}
				break;
		}
	}
	
	void fail() {
		Debug.Log("should be angry");
		headbanging = false;
		didbangontime = false;
		headbangcount = 0;
		foreach(var part in animators) {
			part.SetBool("Headbang", false);
			part.SetBool("Angry", true);
		}
	}

	void Update() {
		if(headbanging) {
			timefornextbang -= Time.deltaTime;
			if(timefornextbang < 0) {
				timefornextbang = beatseconds;
				if(didbangontime) {
					didbangontime = false;
					headbangcount++;
				} else {
					fail();
				}
			}
		}
		if(state == DateState.HAPPY) {
			cooldown -= Time.deltaTime;
			if(cooldown < 0) {
				state = DateState.NORMAL;
				foreach(var part in animators) {
					part.SetBool("Normal", true);
					part.SetBool("Happy", false);
					part.SetBool("Angry", false);
					part.SetBool("Headbang", false);
				}
				headbangcount = 0;
			}
		}
	}
}
