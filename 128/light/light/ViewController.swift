//
//  ViewController.swift
//  light
//
//  Created by Apple on 15/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    var lightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func `switch`(_ sender: UIButton) {
        
        lightOn.toggle()
        if lightOn{
            view.backgroundColor = .black
            btn.setTitle(title:"ON", for: UIControl.State)
            
            
        }
        else
        {
            view.backgroundColor = .white
            btn.setTitle(title:"ON", for: <#T##UIControl.State#>)
        }
    }
    
}

