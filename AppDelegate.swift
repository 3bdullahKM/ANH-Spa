//
//  AppDelegate.swift
//  ANH
//
//  Created by Abdullah Almutairi on 16/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
        -> Bool {
            FirebaseApp.configure()
            let myDatabase = Database.database().reference()
            myDatabase.setValue("We got Data")
            return true
    }
}
