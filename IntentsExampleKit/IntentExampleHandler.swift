//
//  IntentExampleHandler.swift
//  WWDC2016Examples
//
//  Created by Motoki on 2016/06/22.
//  Copyright © 2016年 MotokiNarita. All rights reserved.
//

import Foundation
import Intents

public final class IntentExampleHandler: NSObject, INStartWorkoutIntentHandling, INEndWorkoutIntentHandling {

    /// MARK: Resolve
    public func resolveWorkoutName(forStartWorkout intent: INStartWorkoutIntent, with completion: (INStringResolutionResult) -> Void) {
        let resolutionResult = INStringResolutionResult.success(with: "Running")
        completion(resolutionResult)
    }

    public func resolveWorkoutName(forEndWorkout intent: INEndWorkoutIntent, with completion: (INStringResolutionResult) -> Swift.Void) {
        let resolutionResult = INStringResolutionResult.success(with: "Running")
        completion(resolutionResult)
    }


    /// MARK: Confirm
    public func confirm(startWorkout startWorkoutIntent: INStartWorkoutIntent, completion: (INStartWorkoutIntentResponse) -> Void) {
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INStartWorkoutIntent))
        let response = INStartWorkoutIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }

    public func confirm(endWorkout intent: INEndWorkoutIntent, completion: (INEndWorkoutIntentResponse) -> Swift.Void) {
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INEndWorkoutIntent))
        let response = INEndWorkoutIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }


    /// MARK: Handle
    public func handle(startWorkout startWorkoutIntent: INStartWorkoutIntent, completion: (INStartWorkoutIntentResponse) -> Void) {
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INStartWorkoutIntent))
        let response = INStartWorkoutIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }


    public func handle(endWorkout endWorkoutIntent: INEndWorkoutIntent, completion: (INEndWorkoutIntentResponse) -> Void) {
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INEndWorkoutIntent))
        let response = INEndWorkoutIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }
}

