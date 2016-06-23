//
//  AppDelegate.swift
//  WWDC2016Examples
//
//  Created by Motoki on 2016/06/15.
//  Copyright © 2016年 MotokiNarita. All rights reserved.
//

import UIKit
import Intents

let StartWorkout = NSNotification.Name("StartWorkout")
let EndWorkout = NSNotification.Name("EndWorkout")


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        INPreferences.requestSiriAuthorization { status in
            if case .authorized = status {
                print("authorized")
            } else {
                print("not authorized")
            }
        }

        return true
    }

    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool {

        switch userActivity.activityType {
            
        case "INStartWorkoutIntent":
            NotificationCenter.default().post(name: StartWorkout, object: nil)
            return true

        case "INEndWorkoutIntent":
            NotificationCenter.default().post(name: EndWorkout, object: nil)
            return true

        default:
            return false
        }

    }

}

