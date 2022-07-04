//
//  AppDelegate.swift
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

import UIKit
import CustomApplication

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let instance = CustomApplication.shared
        let result = instance.application(application, didFinishLaunchingWithOptions: launchOptions)
        if let window = instance.window { self.window = window }
        return result
    }

    override func forwardingTarget(for aSelector: Selector!) -> Any? { CustomApplication.shared }

    override func responds(to aSelector: Selector!) -> Bool {
        super.responds(to: aSelector) || CustomApplication.shared.responds(to: aSelector)
    }
}

