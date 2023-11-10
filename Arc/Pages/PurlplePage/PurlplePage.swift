//
//  BluePage.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

struct PurlplePage: View {
    var body: some View {
        ZStack(){
            Color.purple
                .ignoresSafeArea()
            Button("Push To About Page") {
                let url = URL.init(string: "arc://hong.com/aboutpage")!
                ArcApp.open(url: url)
            }
        }
    }
}

#Preview {
    PurlplePage()
}
