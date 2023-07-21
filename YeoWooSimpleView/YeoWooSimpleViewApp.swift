//
//  YeoWooSimpleViewApp.swift
//  YeoWooSimpleView
//
//  Created by 정회승 on 2023/07/14.
//

import SwiftUI

@main
struct YeoWooSimpleViewApp: App {
    
    
    private var delegate: NotificationDelegate = NotificationDelegate()
    
    //알람 init
    init() {
        let center = UNUserNotificationCenter.current()
        center.delegate = delegate
        center.requestAuthorization(options: [.alert, .sound, .badge]) { result, error in
            if let error = error {
                print(error)
                
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
