//
//  ContentView.swift
//  TimeLiveActivity
//
//  Created by Groo on 5/20/24.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    static let dateFormatter: DateFormatter = {
           let formatter = DateFormatter()
            formatter.dateFormat = "MM/dd/yyyy_HH:mm:ss"
            return formatter
        }()
//    @State private var isTrackingTime = false
//    @State private var startTime: Date? = nil
    @State private var activity: Activity<TimeAttributes>? = nil
    @State private var alarmTime = dateFormatter.date(from: "\(Date.now.formatted(date: .numeric, time: .omitted))_22:00:00")!
    var body: some View {
        VStack {
//            if let alarmTime {
                Text(alarmTime, style: .relative)
//            }
            Button("start") {
//                isTrackingTime = true
//                startTime = .now
                let attributes = TimeAttributes()
                let state = TimeAttributes.ContentState(restTime: alarmTime)
                let content = ActivityContent<TimeAttributes.ContentState>(state: state, staleDate: alarmTime.addingTimeInterval(600)) // 10분 뒤 자동 종료
                activity = try? Activity<TimeAttributes>.request(attributes: attributes, content: content, pushType: nil)
            }
            Button("end") {
//                guard let startTime else { return }
                let state = TimeAttributes.ContentState(restTime: alarmTime)
                let content = ActivityContent<TimeAttributes.ContentState>(state: state, staleDate: alarmTime.addingTimeInterval(600))
                Task {
                    await activity?.end(content, dismissalPolicy:.immediate)
                }
//                self.startTime = nil
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
