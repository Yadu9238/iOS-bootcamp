//
//  ViewController.swift
//  NavigationExample
//
//  Created by Apple on 19/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let yellowVc = segue.destination as? YellowViewController{
            yellowVc.title = textField.text
        }
    }


}

