using UnityEngine;
using System.Collections;


public class BarInteraction : MonoBehaviour {

	public float sweetspot_funny = 1f, sweetspot_sexy = 0f, sweetspot_smooth = 0f;
	public float funny = 0, sexy = 0f, smooth = 0f;
	public float decipation = 0.001f;
	public float difference_sweetspot = 0.01f;
	public float speed = 0.5f;
	public bool win = false;

	void Start() {
		sweetspot_funny = 1;
	}

	void decipate() {
		float d = 1 - decipation * Time.deltaTime;
		funny *= d;
		sexy *= d;
		smooth *= d;
	}
	
	void Update () {
		if(!win) {
			decipate();
			if(Input.GetKeyDown(KeyCode.UpArrow)) {
				funny += speed;
			}
			if(Input.GetKeyDown(KeyCode.LeftArrow)) {
				smooth += speed;
			}
			if(Input.GetKeyDown(KeyCode.RightArrow)) {
				sexy += speed;
			}
			if(Input.GetKeyDown(KeyCode.DownArrow)) {
				sexy *= 0.5f;
				funny *= 0.5f;
				smooth *= 0.5f;
			}
			transform.Rotate(funny, sexy, smooth);
			float sum = 0;
			sum += Mathf.Abs(sweetspot_funny - funny);
			sum += Mathf.Abs(sweetspot_sexy - sexy);
			sum += Mathf.Abs(sweetspot_smooth - smooth);
			if(!win && sum < difference_sweetspot) {
				Debug.Log("win");
				win = true;
			}
		}
	}
}
