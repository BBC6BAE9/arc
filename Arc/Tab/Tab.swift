//
//  Tab.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

public enum Tab:String, CaseIterable {
    
    case home = "0"
    case profile = "1"
    
    @ViewBuilder
    var label: some View {
        switch self {
        case .home:
            Label("Home", systemImage: "house")
        case .profile:
            Label("Profile", systemImage: "person.crop.circle")
        }
    }
    
    static func convert(from:String) -> Self?{
        return Tab.allCases.first{ tab in
            tab.rawValue.lowercased() == from.lowercased()
        }
    }
}
