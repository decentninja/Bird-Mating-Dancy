using UnityEngine;
using System.Collections;

public abstract class AbstractDate : MonoBehaviour {

	public DateState state;
	public PlayerController playercontroller;
	public PlayerActions playeractions;
	public float cosyProximity = 1f;
	public float jumpAwayDistance = 1f;

	public abstract void handlePlayerDid(PlayerAction pa);

	public void playerDid(PlayerAction pa) {
		handlePlayerDid(pa);
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
