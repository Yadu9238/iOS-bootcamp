//
//  ViewController.swift
//  sliderTest
//
//  Created by Apple on 17/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var r: UILabel!
    @IBOutlet weak var g: UILabel!
    @IBOutlet weak var b: UILabel!
    
    var redValue: CGFloat = 0.5
    var greenValue: CGFloat = 0.5
    var blueValue: CGFloat = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        r.text = "R: \(Int(redSlider.value*255.0))"
        g.text = "G: \(Int(greenSlider.value*255.0))"
        
        b.text = "B: \(Int(blueSlider.value*255.0))"
       self.view.backgroundColor = UIColor(red: CGFloat(redSlider!.value), green: CGFloat(greenSlider!.value), blue: CGFloat(blueSlider!.value), alpha: 1.0)
    }
    
    
    @IBAction func slideValue(_ sender: UISlider) {
        r.text = "R: \(Int(redSlider.value*255.0))"
        g.text = "G: \(Int(greenSlider.value*255.0))"
        b.text = "B: \(Int(blueSlider.value*255.0))"
        
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider!.value), green: CGFloat(greenSlider!.value), blue: CGFloat(blueSlider!.value), alpha: 1.0)
    }
    
}

