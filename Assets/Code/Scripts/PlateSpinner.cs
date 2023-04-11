using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlateSpinner : MonoBehaviour
{
    public float SpinSpeed = 1;
    
    void Update()
    {
        var rotation = Quaternion.Euler(0, Time.deltaTime * SpinSpeed, 0);
        transform.localRotation *= rotation;
    }
}
