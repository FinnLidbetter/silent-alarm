//
//  ContentView.swift
//  silent-alarm WatchKit Extension
//
//  Created by Finn Lidbetter on 2022-03-19.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var extensionDelegate: ExtensionDelegate
    @State private var alarmIsActive = false
    
    var body: some View {
        VStack {
            Text("Alarm is \(alarmStateString())")
                .padding()
            Button(action: {
                self.alarmIsActive = !self.alarmIsActive
                if self.alarmIsActive {
                    extensionDelegate.setupSession()
                    extensionDelegate.scheduleAlarm()
                }
            }) {
                Text("Toggle Alarm")
            }
        }
    }
    
    func alarmStateString() -> String {
        if self.alarmIsActive {
            return "On"
        }
        return "Off"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
