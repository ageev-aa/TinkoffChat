//
//  AppDelegate.swift
//  TinkoffChat
//
//  Created by Александр on 21.02.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?    
    var currentState = UIApplication.shared.applicationState

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        let functionName=#function
        getStateAndPrintIt(functionName)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        let functionName=#function
        getStateAndPrintIt(functionName)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        let functionName=#function
        getStateAndPrintIt(functionName)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        let functionName=#function
        getStateAndPrintIt(functionName)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        let functionName=#function
        getStateAndPrintIt(functionName)
    }
    
    func getStateAndPrintIt(_ functionName: String){
        let state = UIApplication.shared.applicationState
        print("Application moved from \(printState(currentState)) to \(printState(state)) : \(functionName)")
        currentState=state
    }
    
    func printState (_ state: UIApplicationState) -> String {
        switch state {
            case .active:
                return "active"
            case .inactive:
                return "inactive"
            case .background:
                return "background"
        }
    }
}

