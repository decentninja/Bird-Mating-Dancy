using UnityEngine;
using System.Collections;

public abstract class AbstractDate : MonoBehaviour
{

    public DateState state;
    public PlayerController playercontroller;
    public PlayerActions playeractions;
    public float cosyProximity = 1f;
    public float jumpAwayDistance = 1f;
    public BirdMood birdmood;

    public abstract void handlePlayerDid(PlayerAction pa);

    void Start()
    {
        updateState();
    }

    public void updateState()
    {
        switch (state)
        {
            case DateState.HAPPY:
                if (birdmood != null)
                    birdmood.SetHappy();
                if (playercontroller.happiness != null)
                    playercontroller.happiness.setValue(1f);
                break;
            case DateState.NORMAL:
                if (birdmood != null)
                    birdmood.SetNeutral();
                if (playercontroller.happiness != null)
                    playercontroller.happiness.setValue(0.5f);
                break;
            case DateState.UNHAPPY:
                if (playercontroller.happiness != null)
                    playercontroller.happiness.setValue(0f);
                if (birdmood != null)
                    birdmood.SetAngry();
                break;
        }
    }

    public void playerDid(PlayerAction pa)
    {
        handlePlayerDid(pa);
        updateState();
        if (Vector3.Distance(transform.position, playeractions.transform.position) < cosyProximity)
        {
            switch (state)
            {
                case DateState.HAPPY:
                    playeractions.Win();
                    StartCoroutine(WaitAndProgress(3));
                    break;
                case DateState.NORMAL:
                    Debug.Log("NOOOP");
                    transform.Translate(jumpAwayDistance, 0, 0);
                    break;
                case DateState.UNHAPPY:
                    playeractions.Lose();
                    //transform.Translate(0, 1000, 0);
                    break;
            }
        }
    }

    IEnumerator WaitAndProgress(float waitTime)
    {
        yield return new WaitForSeconds(waitTime);
        playercontroller.Progress();
    }
}
