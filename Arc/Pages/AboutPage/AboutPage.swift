//
//  AboutPage.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

struct AboutPage: View {
    @EnvironmentObject private var appData:AppData

    var body: some View {
        Button("Back Tab's Root") {
            appData.backToRoot()
        }
    }
}

#Preview {
    AboutPage()
}
