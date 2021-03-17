//
//  ViewController.swift
//  ComicReader
//
//  Created by Apple on 17/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var pageView: UIImageView!
    
    var comicModel:ComicModel = ComicModel()
    
    var currentIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentIndex = 0
        updateView(at: currentIndex)
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swiped(_:)))
        swipeGesture.direction = .left
        pageView.addGestureRecognizer(swipeGesture)
    }
    
    @objc
    func swiped(_ sender:UISwipeGestureRecognizer){
        if sender.direction == .left{
            next(sender)
            
        }
        else if sender.direction == .right{
            prev(sender)
        }
    }
    
    
    
    func updateView(at index:Int){
        let page = comicModel.getPage(at: index)
        titleLabel.text = page.title
        pageView.image = UIImage(named: page.imageName)
    }

    @IBAction func prev(_ sender: Any) {
        if (currentIndex > 0){
            currentIndex -= 1
        updateView(at: currentIndex)
    }
    }
    
    
    @IBAction func next(_ sender: Any) {
        if(currentIndex < 15){
        currentIndex += 1
        updateView(at: currentIndex)
    }
    }
    

}

