using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Lose : MonoBehaviour
{

    public float throwForce = 10;
    public GameObject loseMessage;
    Rigidbody body;

    // Use this for initialization
    void Start()
    {
        body = GetComponent<Rigidbody>();

      //  Invoke("ThrowPlayerAtScreen", 1);
    }

    // Update is called once per frame
    void Update()
    {

        if (transform.position.z <= -12)
        {
            body.velocity = new Vector3(0, 0, 0);
            body.useGravity = true;
            body.mass = 10;
            ShowLoseMessage();
        }

    }

    private void ThrowPlayerAtScreen()
    {
        Debug.DrawLine(transform.position, Camera.main.transform.position, Color.red, 30, false);
        print(Camera.main.transform.position - transform.position);
        body.AddForce((Camera.main.transform.position - transform.position).normalized * throwForce, ForceMode.Impulse);
    }

    private void ShowLoseMessage()
    {
        loseMessage.SetActive(true);
    }

    public void TriggerLose()
    {
        ThrowPlayerAtScreen();
    }
}
