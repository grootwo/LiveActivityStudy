//
//  TimeAttributes.swift
//  TimeLiveActivity
//
//  Created by Groo on 5/20/24.
//

import Foundation
import ActivityKit

struct TimeAttributes: ActivityAttributes {
    public typealias TimeStatus = ContentState
    
    public struct ContentState: Codable, Hashable {
        var restTime: Date
    }
}
