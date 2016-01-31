using UnityEngine;
using System.Collections;

public class BranchSway : MonoBehaviour {

	public AnimationCurve swaycurve;
	public float timescale = 1;
	public float timeoffset = 0;

	public Vector3 swaylimit;

	Quaternion maxRot, minRot;

	// Use this for initialization
	void Start () {

		maxRot = Quaternion.Euler(transform.rotation.eulerAngles + swaylimit);
		minRot = Quaternion.Euler(transform.rotation.eulerAngles - swaylimit);
	
	}
	
	// Update is called once per frame
	void Update () {
		
		//Vector3 rotateDegrees = new Vector3(0,0,swaycurve.Evaluate(Time.time*timescale+timeoffset*Time.deltaTime));

		transform.rotation = Quaternion.Lerp(minRot, maxRot,swaycurve.Evaluate(Time.time*timescale+timeoffset)); 
	
	}
}
