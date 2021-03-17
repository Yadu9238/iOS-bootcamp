//
//  AppDelegate.swift
//  test2
//
//  Created by Apple on 16/03/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        var windowFrame = UIScreen.main.bounds
        window = UIWindow(frame: windowFrame)
        window?.backgroundColor = UIColor.red
        //window?.rootViewController = UIViewController()
        
        //adding login
       // let userTextFieldFrame = CGRect(x: 20, y: 100, width: 200, height: 40)
        //let userTextField = UIWindow(frame: userTextFieldFrame)
        
        let loginVC = LoginViewController()
        window?.rootViewController = loginVC
        
        window?.makeKeyAndVisible()
        return true
    }


}
