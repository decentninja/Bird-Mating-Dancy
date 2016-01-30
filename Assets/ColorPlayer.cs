using UnityEngine;
using System.Collections;

public class ColorPlayer : MonoBehaviour
{
    SpriteRenderer[] bodyParts;

    // Use this for initialization
    void Start()
    {
        bodyParts = transform.GetComponentsInChildren<SpriteRenderer>();

        foreach (var part in bodyParts)
        {
            part.color = Color.yellow;
        }
    }
}
