//
//  ViewController.swift
//  login
//
//  Created by Apple on 18/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func login(_ sender: Any) {
        
        if let user = userName.text,
           let pass = password.text{
           
            if user == "admin" && pass == "admin"{
                print("login success")
                performSegue(withIdentifier: "next", sender: self)
                
            }else{
                showDialog()
            }
        }
    }
    
    func showDialog(){
        let alert = UIAlertController(title: "Test page", message: "Wrong pass or user", preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Go back", style: .cancel, handler: nil)
        
        alert.addAction(actionAlert)
        self.present(alert, animated: true, completion: nil)
    }
    
}

