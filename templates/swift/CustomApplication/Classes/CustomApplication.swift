//
//  CustomApplication.swift
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//

import UIKit

public class CustomApplication: UIResponder, UIApplicationDelegate {
    
    public static let `shared` = CustomApplication()
    
    public var window: UIWindow?
    
    public func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        // Override point for customization after application launch.
        
        return true
    }
}
