//
//  IntentsExampleKitTests.swift
//  IntentsExampleKitTests
//
//  Created by Motoki on 2016/06/22.
//  Copyright © 2016年 MotokiNarita. All rights reserved.
//

import XCTest
import Intents
@testable import IntentsExampleKit

class IntentsExampleKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testStartIntentsResolve() {

        let expectation = self.expectation(withDescription: "")

        let mockIntent = INStartWorkoutIntent(workoutName: nil, goalValue: nil, workoutGoalUnitType: .unknown, workoutLocationType: .unknown, isOpenEnded: false)

        let intentHandler = IntentExampleHandler()
        intentHandler.resolveWorkoutName(forStartWorkout: mockIntent) { result in
            expectation.fulfill()
        }

        self.waitForExpectations(withTimeout: 1.0, handler: nil)
    }

    func testStartIntentsConfirm() {

        let expectation = self.expectation(withDescription: "")

        let mockIntent = INStartWorkoutIntent(workoutName: nil, goalValue: nil, workoutGoalUnitType: .unknown, workoutLocationType: .unknown, isOpenEnded: false)

        let intentHandler = IntentExampleHandler()
        intentHandler.confirm(startWorkout: mockIntent) { response in
            if case .success = response.code {
                XCTAssert(true)
                expectation.fulfill()
            } else {
                XCTFail()
            }
        }

        self.waitForExpectations(withTimeout: 1.0, handler: nil)
    }

    func testStartIntentsHandler() {

        let expectation = self.expectation(withDescription: "")

        let mockIntent = INStartWorkoutIntent(workoutName: nil, goalValue: nil, workoutGoalUnitType: .unknown, workoutLocationType: .unknown, isOpenEnded: false)

        let intentHandler = IntentExampleHandler()
        intentHandler.handle(startWorkout: mockIntent) { response in
            if case .success = response.code {
                XCTAssert(true)
                expectation.fulfill()
            } else {
                XCTFail()
            }
        }

        self.waitForExpectations(withTimeout: 1.0, handler: nil)
    }

    
}
