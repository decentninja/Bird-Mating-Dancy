using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TreeSwayer : MonoBehaviour {

	public List<GameObject> trees;
	List<Vector3> treepositions;

	public float noiseScale;
	public float noiseSpeed;
	public float noiseStrength;

	int counter = 0;


	// Use this for initialization
	void Start () {

		trees.AddRange(GameObject.FindGameObjectsWithTag("tree"));
		Debug.Log(trees.Count);
		InitializePositions();

		GenerateNoise();

	
	}
	
	// Update is called once per frame
	void Update () {

		counter = 0;

		trees.ForEach(OffSetAll);
	
	}

	void GenerateNoise() {

		//Mathf.PerlinNoise(



	}

	void InitializePositions() {

		treepositions = new List<Vector3>();

		for(int i = 0; i < trees.Count; i++) {
			//Debug.Log(i);
			treepositions.Add(trees[i].transform.position);
		}	
	}

	void OffSetAll(GameObject tree) {
		Vector3 offset = new Vector3(Mathf.PerlinNoise(treepositions[counter].x*noiseScale+Time.time*noiseSpeed, treepositions[counter].y*noiseScale+Time.time*noiseSpeed),0,0);
		offset *= noiseStrength;
		tree.transform.position = treepositions[counter] + offset;
		counter++;
	}

			

}
