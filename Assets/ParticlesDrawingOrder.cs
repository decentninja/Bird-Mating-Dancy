using UnityEngine;
using System.Collections;

public class ParticlesDrawingOrder : MonoBehaviour
{

    private ParticleRenderer particleSystem;

    void Start()
    {
        particleSystem = GetComponent<ParticleRenderer>();
        //Change Foreground to the layer you want it to display on 
        //You could prob. make a public variable for this
        particleSystem.sortingLayerName = "CharacterFront";
        particleSystem.sortingOrder = 5;
    }
    // Update is called once per frame
    void Update()
    {

    }
}
