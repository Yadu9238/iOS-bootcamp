//
//  ComicModel.swift
//  ComicReader
//
//  Created by Apple on 17/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

struct Page{
    var title:String
    var imageName:String
}

struct ComicModel{
    var pages: [Page]

    var numOfPages: Int{
       return  pages.count
    }
    
    func getPage(at index:Int)->Page{
        return pages[index]
    }
    
    init(){
        pages = []
        for index in 0...16{
            if index == 3{
                continue
            }
            let page = Page(title: "\(index)", imageName: "Revolver-\(index)")
            
            pages.append(page)
        }
    }
    
}




