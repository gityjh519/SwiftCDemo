//
//  AppDelegate.swift
//  SwiftCDemo
//
//  Created by yaojinhai on 2019/6/22.
//  Copyright © 2019 yaojinhai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

     var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds);
        window?.rootViewController = ViewController();
        window?.backgroundColor = UIColor.white;
        window?.makeKeyAndVisible();
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: UISceneSession Lifecycle




}

