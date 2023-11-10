//
//  AppData.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

// ViewModel for App
class AppData: ObservableObject {

    @Published var activeTab: Tab = .home

    /// Home NavigationStatck
    @Published var homeNavStack: [String] = []
    
    /// Profile NavigationStatck
    @Published var profileNavStack: [String] = []

    func backToRoot() {
        switch activeTab {
        case .home:
            homeNavStack = []
        case .profile:
            profileNavStack = []
        }
    }
}
