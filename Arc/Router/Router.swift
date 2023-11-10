//
//  Router.swift
//  TencentVideoVisionApp
//
//  Created by ihenry on 2023/11/10.
//  Copyright © 2023 Tencent Inc. All rights reserved.
//

import SwiftUI

protocol DeepLink {
    var pageParams: [String: String]? { get set }
}

struct Router {
    
    static func NavDestinationForWith(_ page: String)-> AnyView{
    
        var view:any View;
        switch page {
        case "purplepage":
            view = PurlplePage()
        case "yellowpage":
            view = YellowPage()
        case "aboutpage":
            view = AboutPage()
            
        default:
            view = EmptyView()
        }
        
        if var deepLinkView = view as? any DeepLink & View{
            deepLinkView.pageParams = ["name":"huanghong"]
            return AnyView(deepLinkView)
        }else{
            return AnyView(view)
        }
    }
    
}
