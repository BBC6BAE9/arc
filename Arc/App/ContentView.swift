//
//  ContentView.swift
//  Arc
//
//  Created by ihenry on 2023/11/10.
//

import SwiftUI

let scheme = "arc"     // protocol
let host = "hong.com"  // host

struct ContentView: View {
    
    @EnvironmentObject private var appData:AppData

    var body: some View {
        TabView(selection: $appData.activeTab,
                content:  {
            HomeView()
                .tag(Tab.home)
                .tabItem {
                    Tab.home.label
                }
            ProfileView()
                .tag(Tab.profile)
                .tabItem {
                    Tab.profile.label
                }
        })
        .onOpenURL(perform:onOpenURL)
    }
    
    @ViewBuilder
    func HomeView() -> some View{
        NavigationStack(path: $appData.homeNavStack){
            HomePage()
                .navigationTitle("Home")
                .navigationDestination(for: String.self) { page in
                    Router.NavDestinationForWith(page)
                        .environmentObject(appData)
                }
        }
    }
    
    @ViewBuilder
    func ProfileView() -> some View{
        NavigationStack(path: $appData.profileNavStack){
            ProfilePage()
                .navigationTitle("Profile")
                .navigationDestination(for: String.self) { page in
                    Router.NavDestinationForWith(page)
                }
        }
    }
    
    /// 应用内打开链接
    func onOpenURL(url:URL){
        
        if (scheme != url.scheme){
            return;
        }
        
        if (host != url.host()){
            return;
        }
        
        // 解析page
        let pathComponents = url.pathComponents
        guard let page = pathComponents.last else{
            return
        }
        
        // 解析params
        let params = pageParams(url)
        
        // Tab页面
        if page.lowercased() == "tab" {
            guard let params = params, let tabIndex = params["tabIndex"] ,let tabRawValue = Tab.convert(from: tabIndex) else {
                return
            }
            appData.activeTab = tabRawValue
            return
        }
        
        // 正常页面导航
        switch appData.activeTab {
        case .home:
            appData.homeNavStack.append(page)
        case .profile:
            appData.profileNavStack.append(page)
        }
    }
    
    /// 获取页面的参数
    func pageParams(_ url: URL) -> Dictionary<String, String>? {
        let components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        guard let queryItems = components?.queryItems else{
            return nil
        }
        var paramMap = [String: String]()
        for item in queryItems {
            if let value = item.value {
                paramMap[item.name] = value
            }
        }
        return paramMap
    }
    
}

#Preview {
    ContentView()
}
