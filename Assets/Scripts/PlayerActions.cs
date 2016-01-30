using UnityEngine;
using System.Collections;


public class PlayerActions : MonoBehaviour
{

    public float moveForce = 5f;
    private Rigidbody2D body;
    public AbstractDate date;
    public int level = 0;
    bool headbang = false;
    public float level_width = 3f;

    Animator[] bodyParts;
    Animator firstAnimator;

    void Awake()
    {
        firstAnimator = transform.GetComponentInChildren<Animator>();
        bodyParts = transform.GetComponentsInChildren<Animator>();
    }

    void Start()
    {
        body = GetComponent<Rigidbody2D>();
    }

    void Update()
    {

        if (!Input.GetKey(KeyCode.LeftArrow) && !Input.GetKey(KeyCode.RightArrow))
        {
            SetIdle();
        }

        if (Input.GetKey(KeyCode.LeftArrow))
        {
            SetWalk();
            body.AddForce(Vector2.left * moveForce);
            date.playerDid(PlayerAction.BACKOFF);
        }
        if (Input.GetKey(KeyCode.RightArrow))
        {
            SetWalk();
            body.AddForce(Vector2.right * moveForce);
            date.playerDid(PlayerAction.MOVE_FORWARD);
        }
        if (level >= 1 && Input.GetKey(KeyCode.Space))
        {
            headbang = true;
            Debug.Log("Head down");
        }
        if (headbang && !Input.GetKey(KeyCode.Space))
        {
            headbang = false;
            Debug.Log("Head up");
            date.playerDid(PlayerAction.HEADBANG);
        }
        Vector3 pos = transform.position;
        pos.x = Mathf.Clamp(pos.x, -level_width, level_width);
        transform.position = pos;
    }

    public void SetWalk()
    {
        if (!firstAnimator.GetCurrentAnimatorStateInfo(0).IsName("Walk"))
        {
            foreach (var part in bodyParts)
            {
                part.SetTrigger("Walk");
            }
        }
    }

    public void SetHeadbang()
    {
        if (!firstAnimator.GetCurrentAnimatorStateInfo(0).IsName("Headbang"))
        {
            foreach (var part in bodyParts)
            {
                part.SetTrigger("Headbang");
            }
        }
    }

    public void SetIdle() {

        if (!firstAnimator.GetCurrentAnimatorStateInfo(0).IsName("Idle"))
        {
            foreach (var part in bodyParts)
            {
                part.SetTrigger("Idle");
            }
        }
    }

}
