//
//  ViewController.swift
//  DataPassing
//
//  Created by Apple on 20/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondListener {
    func receiveMessage(message: String) {
        myLabel.text = message
    }
    

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let svc = segue.destination as? SecondViewController{
            svc.delegate = self
        }
    }
}

