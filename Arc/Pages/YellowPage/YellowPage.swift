//
//  YellowPage.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

struct YellowPage: View {
    var body: some View {
        ZStack(){
            Color.yellow
                .ignoresSafeArea()
            Button("Push To purple Page") {
                let url = URL.init(string: "arc://hong.com/aboutpage")!
                ArcApp.open(url: url)
            }
        }
    }
}

#Preview {
    YellowPage()
}
