//
//  TimeWidget.swift
//  TimeWidget
//
//  Created by Groo on 5/20/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct TimeWidget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: TimeAttributes.self) { context in
            
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.bottom) {
                    Text("\(context.state.restTime)")
                    Text("잔디 심을 시간")
                    Button("click") {}
                }
            } compactLeading: {
                Text("CL")
            } compactTrailing: {
                Text("CT")
            } minimal: {
                Text("Min")
            }
        }
    }
}

struct TimeWidgetView: View {
    let context: ActivityViewContext<TimeAttributes>
    
    var body: some View {
        Text("\(context.state.restTime)")
    }
}
