//
//  AppDelegate.swift
//  tableViewHW
//
//  Created by Alisher Tulembekov on 11.03.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: TableViewController())
        window?.makeKeyAndVisible()
        return true
    }


}

