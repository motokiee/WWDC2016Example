//
//  IntentHandler.swift
//  IntentsExample
//
//  Created by Motoki on 2016/06/21.
//  Copyright © 2016年 MotokiNarita. All rights reserved.
//

import Intents
import IntentsExampleKit

class IntentHandler: INExtension {
        override func handler(for intent: INIntent) -> AnyObject {
        return IntentExampleHandler()
    }
}
