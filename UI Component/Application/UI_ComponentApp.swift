//
//  UI_ComponentApp.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

@main
struct Application: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Label("微信", systemImage: "message.fill")
                    }
                ContactsView()
                    .tabItem {
                        Label("通信录", systemImage: "phone.fill")
                    }
                ExplorationView()
                    .tabItem {
                        Label("发现", systemImage: "safari.fill")
                    }
                    .navigationTitle("发现")
                MeView()
                    .tabItem {
                        Label("我", systemImage: "person.fill")
                    }
            }
        }
    }
}
