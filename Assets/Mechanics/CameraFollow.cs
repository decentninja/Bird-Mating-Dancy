using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {

	public float followSpeed = 1;
	public Transform followTarget;
	Transform camera;


	// Use this for initialization
	void Start () {

		camera = transform;
	
	}
	
	// Update is called once per frame
	void Update () {

		float zPos = camera.position.z;

		Vector3 toPos = followTarget.position;
		toPos.z = zPos;

		camera.position = Vector3.Lerp(camera.position, toPos, Time.deltaTime*followSpeed);
	
	}
}
