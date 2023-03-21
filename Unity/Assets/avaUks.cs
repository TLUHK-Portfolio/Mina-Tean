using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class avaUks : MonoBehaviour
{
    public float Nurk;
    public float smooth = .50f;
    public bool ava = false;

    

    // Update is called once per frame
    void Update()
    {
        if (ava)
        {
            Quaternion target = Quaternion.Euler(-90, 0, Nurk);
            // Dampen towards the target rotation
            transform.rotation = Quaternion.Slerp(transform.rotation, target, Time.deltaTime * smooth);
        }
    }
}
