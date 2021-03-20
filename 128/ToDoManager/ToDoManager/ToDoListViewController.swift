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
        for (index,item) in dataModel.items.enumerated(){
            createRow(index:index ,at:item)
        }
    }
    
    

    
    @IBAction func add(_ sender: Any) {
        //createRow()
    }
    func createRow(index:Int ,at:ToDoItem){
        if let objs = Bundle.main.loadNibNamed("itemView", owner: self, options: nil)
        {
            if let mainView = objs[0] as? UIControl{
               
                mainView.tag = index
                mainView.addTarget(self, action: #selector(itemTapped(_:)), for: .touchUpInside)
                
                let label1 = mainView.viewWithTag(101) as! UILabel
                let label2 = mainView.viewWithTag(102) as! UILabel
                label1.text = at.title
                label2.text = "\(at.priority)"
                
                toDoStack.addArrangedSubview(mainView)
            }
        }
        
    }
    
    
    
    @objc
    func itemTapped(_ sender:UIView){
        
        print("View Selected = \(sender.tag)")
        performSegue(withIdentifier: "itemDetails", sender: sender )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let mainView = sender as? UIView{
            print(mainView.tag)
            
            let item = dataModel.items[mainView.tag]
            
            if let itemDetail = segue.destination as? ToDoItemViewController{
                itemDetail.item = item
            }
           // itemDet.priorityLabel = "test"
            //itemDet.titleLabel = "testing"
           // itemDet.item =
        }
    }
}

extension ToDoListViewController: UINavigationControllerDelegate{
    
}
