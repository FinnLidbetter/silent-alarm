//
//  silent_alarmApp.swift
//  silent-alarm WatchKit Extension
//
//  Created by Finn Lidbetter on 2022-03-19.
//

import SwiftUI

@main
struct silent_alarmApp: App {
    @WKExtensionDelegateAdaptor private var extensionDelegate: ExtensionDelegate
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
