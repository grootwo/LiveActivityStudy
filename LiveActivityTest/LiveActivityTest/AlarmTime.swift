//
//  AlarmTime.swift
//  LiveActivityTest
//
//  Created by Groo on 5/28/24.
//

import Foundation

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd/yyyy_HH:mm:ss"
    return formatter
}()

var alarmTimeFromDB = dateFormatter.date(from: "\(Date.now.formatted(date: .numeric, time: .omitted))_21:00:00")
