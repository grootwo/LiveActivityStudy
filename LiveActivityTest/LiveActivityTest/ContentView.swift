//
//  ContentView.swift
//  LiveActivityTest
//
//  Created by Groo on 5/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        LiveActivityView(alarmTime: LiveActivityView.dateFormatter.date(from: "\(Date.now.formatted(date: .numeric, time: .omitted))_13:58:40")!)
        MainView()
    }
}

#Preview {
    ContentView()
}
