//
//  SecondViewController.swift
//  DataPassing
//
//  Created by Apple on 20/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
protocol SecondListener{
    func receiveMessage(message:String)
}
class SecondViewController: UIViewController {

    var delegate:SecondListener?
    
    @IBOutlet weak var messageTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func done(_ sender: Any) {
        if let msg = messageTextField.text{
        delegate?.receiveMessage(message: msg)
    }
        dismiss(animated: true, completion: nil)
    }
    
}
