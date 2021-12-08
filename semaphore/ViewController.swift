//
//  ViewController.swift
//  semaphore
//
//  Created by Denis on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    var light = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make circles
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.clipsToBounds = true
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        yellowLight.clipsToBounds = true
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        //make translucent lights
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    
    
    @IBAction func buttonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        if light == 0 {
            redLight.alpha = 1; yellowLight.alpha = 0.3; greenLight.alpha = 0.3
            light += 1
        } else if light == 1 {
            redLight.alpha = 0.3; yellowLight.alpha = 1; greenLight.alpha = 0.3
            light += 1
        } else if light == 2 {
            greenLight.alpha = 0.3; yellowLight.alpha = 0.3; greenLight.alpha = 1
            light = 0
        
        
        }
    
    }
}

