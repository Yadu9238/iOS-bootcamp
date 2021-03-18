//
//  YellowViewController.swift
//  TrafficLights
//
//  Created by Apple on 18/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

   
    @IBOutlet weak var text2: UILabel!
    var messageReceived:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let messageReceivedObj = messageReceived{
text2.text = messageReceivedObj        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToYellow(unwindSegue: UIStoryboardSegue){
        print("back to yellow")
    }
    
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
