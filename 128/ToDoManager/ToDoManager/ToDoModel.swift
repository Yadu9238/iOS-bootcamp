//
//  ToDoModel.swift
//  ToDoManager
//
//  Created by Apple on 19/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation


struct ToDoItem{
    var title:String
    var dueDate:Date
    var priority:Int
    var details:String
}


struct ToDoModel{
    var items:[ToDoItem]
    
    init(){
        items = [ToDoItem(title: "get Milk", dueDate: Date(), priority: 9, details: "Get milk today"),ToDoItem(title: "College", dueDate: Date(), priority: 9, details: "attend classes")]
    }
    
  
    
}
