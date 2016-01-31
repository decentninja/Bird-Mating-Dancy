using UnityEngine;
using System.Collections;

public class Test : MonoBehaviour {

	public LayerMask clicklayer;

	bool charging = false;
	public float chargeLimit = 5;
	public float chargeRate = 1;

	float charge = 0;

	public GameObject character;
	Rigidbody2D charRigid;

	// Use this for initialization
	void Start () {

		charRigid = (Rigidbody2D) character.GetComponent<Rigidbody2D>();

	//harRigid.centerOfMass = character.transform.position + character.transform.up;
	
	}
	
	// Update is called once per frame
	void Update () {


		if (Input.GetMouseButtonDown(0)) {
			charging = true;
		}

		if (Input.GetMouseButtonUp(0))
		{	

			charge = Mathf.Clamp(charge,0,chargeLimit);


			RaycastHit hit;
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			Debug.Log("casing.."+ ray);
			if (Physics.Raycast(ray, out hit, 99999999, clicklayer))
			{

				Debug.Log(charge +"hi");

				charRigid.AddForce((hit.point-character.transform.position)*charge);

				charging = false;
				charge = 0;


			}
		}


		if(charging) {

			Debug.LogError(charge+"+"+chargeRate*Time.deltaTime );

			charge+=chargeRate*Time.deltaTime;

		}
			
	
	}




}
