//
//  ViewController.swift
//  TrafficLights
//
//  Created by Apple on 18/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func backToRed(unwindSegue: UIStoryboardSegue){
        print("To red")
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? YellowViewController{
            dest.messageReceived = messageField.text
        }
        
    }

}
