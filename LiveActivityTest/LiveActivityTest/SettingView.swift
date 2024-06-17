//
//  SettingView.swift
//  LiveActivityTest
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct SettingView: View {
    @State private var selectedTime = Date.now
    var body: some View {
        VStack {
            DatePicker("alarm time", selection: $selectedTime, displayedComponents: [.hourAndMinute])
                .onChange(of: selectedTime) { oldValue, newValue in
                    alarmTimeFromDB = selectedTime
                    print("changed alarmTimeFromDB: \(alarmTimeFromDB)")
                }
        }
        .padding()
    }
}

#Preview {
    SettingView()
}
