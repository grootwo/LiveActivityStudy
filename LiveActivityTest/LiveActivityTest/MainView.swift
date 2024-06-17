//
//  MainView.swift
//  LiveActivityTest
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct MainView: View {
    @State var alarmTime: Date = alarmTimeFromDB!
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("MainView")
                    .font(.title)
                LiveActivityView(alarmTime: $alarmTime)
                NavigationLink(destination: SettingView(), label: {
                    Image(systemName: "gearshape")
                })
                .font(.title)
            }
            .onAppear {
                print("MainView")
                alarmTime = alarmTimeFromDB!
                print("alarmTimeFromDB: \(alarmTimeFromDB)")
                print("alarmTime: \(alarmTime)")
            }
        }
    }
}

#Preview {
    MainView(alarmTime: Date.now)
}
