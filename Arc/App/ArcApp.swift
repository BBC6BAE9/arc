//
//  ArcApp.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

@main
struct ArcApp: App {
    
    @State private var appData: AppData = .init()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
        }
    }
    
    static func open(url:URL){
        #if os(macOS)
            NSWorkspace.shared.open(url)
        #else
            UIApplication.shared.open(url)
        #endif
    }
}
