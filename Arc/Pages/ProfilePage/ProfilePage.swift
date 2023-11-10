//
//  ProfilePage.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        Button("Push To Purple Page") {
            let url = URL.init(string: "arc://hong.com/purplepage")!
            ArcApp.open(url: url)   
        }
    }
}

#Preview {
    ProfilePage()
}
