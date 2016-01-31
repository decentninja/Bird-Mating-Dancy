using UnityEngine;
using System.Collections;

public class Win : MonoBehaviour
{
    public GameObject heart;
    public GameObject winMessage;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void TriggerWin()
    {
        Instantiate(heart, GetPositionOfNearestNPC() + new Vector3(0, 3.2f, 0), new Quaternion());
        ShowWinMessage();
        Invoke("HideWinMessage", 3);
    }

    private void ShowWinMessage()
    {
        winMessage.SetActive(true);
    }

    private void HideWinMessage()
    {
        winMessage.SetActive(false);
    }

    private Vector3 GetPositionOfNearestNPC()
    {
        GameObject thisNPC = null;

        foreach (var npc in GameObject.FindGameObjectsWithTag("NPC"))
        {
            if (thisNPC == null)
                thisNPC = npc;

            var newDistance = Vector3.Distance(transform.position, npc.transform.position);
            var oldDistance = Vector3.Distance(transform.position, thisNPC.transform.position);

            if (newDistance < oldDistance)
                thisNPC = npc;

        }

        return thisNPC.transform.position;
    }
}
