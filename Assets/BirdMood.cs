using UnityEngine;
using System.Collections;

public class BirdMood : MonoBehaviour
{

    Animator[] bodyParts;

    // Use this for initialization
    void Awake()
    {
        bodyParts = transform.GetComponentsInChildren<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Q)) {
            SetHappy();
            print("Set Happy");
        }

        if (Input.GetKeyDown(KeyCode.W))
        {
            SetNeutral();
            print("Set Neu");
        }

        if (Input.GetKeyDown(KeyCode.E))
        {
            SetAngry();
            print("Set Angr");
        }

        
    }

    public void SetAngry()
    {
        foreach (var part in bodyParts) {
            part.SetTrigger("Angry");
        }

    }

    public void SetNeutral()
    {
        foreach (var part in bodyParts)
        {
            part.SetTrigger("Neutral");
        }

    }

    public void SetHappy()
    {
        foreach (var part in bodyParts)
        {
            part.SetTrigger("Happy");
        }

    }

}
