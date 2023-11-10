//
//  HomePage.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        HStack(){
            Button("Push To Yellow Page") {
                let url = URL.init(string: "arc://hong.com/yellowpage")!
                ArcApp.open(url: url)
            }
        }
    }
}

#Preview {
    HomePage()
}
