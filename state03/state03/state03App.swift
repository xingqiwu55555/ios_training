//
//  state03App.swift
//  state03
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

@main
struct state03App: App {
    @StateObject var profileModel: ProfileModel = ProfileModel(avatar: "flame.fill")
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(profileModel)
        }
    }
}
