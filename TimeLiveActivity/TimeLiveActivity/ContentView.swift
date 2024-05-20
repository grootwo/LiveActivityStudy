//
//  ContentView.swift
//  TimeLiveActivity
//
//  Created by Groo on 5/20/24.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    @State private var activity: Activity<TimeAttributes>? = nil
    var body: some View {
        VStack {
            Button("start") {
                let attributes = TimeAttributes()
                let state = TimeAttributes.ContentState(restTime: Date.now)
                
                activity = try? Activity<TimeAttributes>.request(attributes: attributes, contentState: state, pushType: nil)
            }
            Button("end") {
                let state = TimeAttributes.ContentState(restTime: Date.now)
                Task {
                    await activity?.end(using: state, dismissalPolicy:.immediate)
                }
            }
        }
        .font(.title)
        .buttonStyle(.bordered)
        .padding()
    }
}

#Preview {
    ContentView()
}
