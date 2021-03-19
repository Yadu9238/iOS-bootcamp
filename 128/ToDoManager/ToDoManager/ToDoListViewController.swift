//
//  ViewController.swift
//  ToDoManager
//
//  Created by Apple on 19/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController {

   
    
    @IBOutlet weak var toDoStack: UIStackView!
    
    
    var dataModel = ToDoModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for item in dataModel.items{
            createRow(at:item)
    }
    }

    @IBAction func add(_ sender: Any) {
        //createRow()
    }
    func createRow(at:ToDoItem){
        if let objs = Bundle.main.loadNibNamed("itemView", owner: self, options: nil)
        {
            if let mainView = objs[0] as? UIView{
                
                toDoStack.addArrangedSubview(mainView)
            }
    }
        
}

}
