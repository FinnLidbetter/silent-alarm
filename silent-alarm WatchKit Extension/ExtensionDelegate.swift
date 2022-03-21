//
//  ExtensionDelegate.swift
//  silent-alarm WatchKit Extension
//
//  Created by Finn Lidbetter on 2022-03-20.
//

import WatchKit
import Foundation

class ExtensionDelegate: NSObject, ObservableObject, WKExtensionDelegate, WKExtendedRuntimeSessionDelegate {
    
    private var session: WKExtendedRuntimeSession!
    
    func setupSession() {
        session = WKExtendedRuntimeSession()
        session.delegate = self
    }
    
    func extendedRuntimeSession(_ extendedRuntimeSession: WKExtendedRuntimeSession, didInvalidateWith reason: WKExtendedRuntimeSessionInvalidationReason, error: Error?) {
        return
    }
    
    func extendedRuntimeSessionDidStart(_ extendedRuntimeSession: WKExtendedRuntimeSession) {
        session.notifyUser(hapticType: WKHapticType.notification, repeatHandler: {_ in TimeInterval(1.0)})
        return
    }
    
    func extendedRuntimeSessionWillExpire(_ extendedRuntimeSession: WKExtendedRuntimeSession) {
        return
    }
    
    func scheduleAlarm() {
        session.start(at: Date() + TimeInterval(10))
    }
}
