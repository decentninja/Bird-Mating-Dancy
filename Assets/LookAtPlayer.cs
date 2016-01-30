using UnityEngine;
using System.Collections;

public class LookAtPlayer : MonoBehaviour
{

    public GameObject player;
    private float radius;
    private Rigidbody2D body;

    // Use this for initialization
    void Start()
    {
        body = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void Update()
    {

        body.AddForce((player.transform.position - transform.position).normalized * 100);

    }
}
