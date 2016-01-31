using UnityEngine;
using System.Collections;

public class CloudAmbientMovement : MonoBehaviour {

	public AnimationCurve swaycurve;
	public float timescale = 1;
	public float timeoffset = 0;


	public Vector3 swaylimit;

	Quaternion maxRot, minRot;
	Vector3 size, maxSize;

	// Use this for initialization
	void Start () {

		maxRot = Quaternion.Euler(transform.rotation.eulerAngles + swaylimit);
		minRot = Quaternion.Euler(transform.rotation.eulerAngles - swaylimit);

		size = transform.localScale;
		maxSize = transform.localScale*1.2f;

	}

	// Update is called once per frame
	void Update () {

		float e = swaycurve.Evaluate(Time.time*timescale+timeoffset);

		transform.localScale = Vector3.Lerp(size, maxSize, swaycurve.Evaluate(Time.time*timescale/10+timeoffset)); 

		transform.rotation = Quaternion.Lerp(minRot, maxRot,e); 

	}
}
