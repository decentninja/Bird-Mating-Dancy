using UnityEngine;
using System.Collections;

public enum State {Happy, Unhappy, Normal};

public class Date : MonoBehaviour {
	
	public State defaultState = State.Happy;
	public State state;
	float happyness;
	public float starting_happyness = 10f;
	public float decipate = 1f;
	public float cosyProximity = 1f;
	public PlayerActions playeraction;
	public float jumpAwayDistance = 1f;

	void Start() {
		state = defaultState;
		happyness = starting_happyness;
	}

	public void playerJumped() {
		happyness -= 1;
	}

	void Update () {
		happyness += Time.deltaTime * decipate;
		happyness = Mathf.Min(starting_happyness, happyness);
		if(happyness < 6) {
			state = State.Unhappy;
		} else {
			state = State.Happy;
		}
		if(Vector3.Distance(transform.position, playeraction.transform.position) < cosyProximity) {
			switch(state) {
				case State.Happy:
					Debug.Log("<3");
					break;
				case State.Normal:
					Debug.Log("NOOOP");
					transform.Translate(jumpAwayDistance, 0, 0);
					break;
				case State.Unhappy:
					Debug.Log("Game over man, game over!");
					transform.Translate(0, 1000, 0);
					break;
			}
		}
	}
}
