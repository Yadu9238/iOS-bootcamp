//
//  ToDoItemViewController.swift
//  ToDoManager
//
//  Created by Apple on 20/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ToDoItemViewController: UIViewController {

    var item:ToDoItem?
    
    
    @IBOutlet weak var priorityLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let itemObj = item{
            priorityLabel.text = "\(itemObj.priority)"
            titleLabel.text = itemObj.title
        }
        // Do any additional setup after loading the view.
    }
    

    

}
