//
//  ContentView.swift
//  TimeLiveActivity
//
//  Created by Groo on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("start") {}
            Button("end") {}
        }
        .font(.title)
        .buttonStyle(.bordered)
        .padding()
    }
}

#Preview {
    ContentView()
}
