using UnityEngine;
using System.Collections;

public abstract class AbstractDate : MonoBehaviour {

	public DateState state;
	public PlayerController playercontroller;
	public PlayerActions playeractions;
	public float cosyProximity = 1f;
	public float jumpAwayDistance = 1f;
	public BirdMood birdmood;

	public abstract void handlePlayerDid(PlayerAction pa);

	void Start() {
		updateState();
	}

	public void updateState() {
		switch(state) {
			case DateState.HAPPY:
				birdmood.SetHappy();
				break;
			case DateState.NORMAL:
				birdmood.SetNeutral();
				break;
			case DateState.UNHAPPY:
				birdmood.SetAngry();
				break;
		}
	}

	public void playerDid(PlayerAction pa) {
		handlePlayerDid(pa);
		updateState();
		if(Vector3.Distance(transform.position, playeractions.transform.position) < cosyProximity) {
			switch(state) {
				case DateState.HAPPY:
					playercontroller.progress();
					break;
				case DateState.NORMAL:
					Debug.Log("NOOOP");
					transform.Translate(jumpAwayDistance, 0, 0);
					break;
				case DateState.UNHAPPY:
					Debug.Log("Game over man, game over!");
					transform.Translate(0, 1000, 0);
					break;
			}
		}
	}

}
