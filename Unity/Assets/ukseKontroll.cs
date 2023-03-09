using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ukseKontroll : MonoBehaviour
{
    // Update is called once per frame
    void FixedUpdate()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hitData;
        
        if (Physics.Raycast(ray, out hitData, 1000) && hitData.transform.tag == "oige_vastus" && Input.GetMouseButtonDown(0))
        {
            GameObject testin = hitData.transform.GetChild(0).gameObject; //
            testin.GetComponent<avaUks>().ava = true;
            Debug.Log(testin);
        }
        
    }
}
