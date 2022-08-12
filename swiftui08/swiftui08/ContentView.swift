//
//  ContentView.swift
//  swiftui08
//
//  Created by xmshen on 2022/8/12.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase: ScenePhase
    
    var body: some View {
        NavigationView {
            NavigationLink.init("DetailView") {
                DetailView()
            }
            .onAppear {
                print("content view onAppear")
            }
            .onDisappear {
                print("content view onDisapear")
            }
        }.onChange(of: scenePhase) { newValue in
            switch newValue {
            case .active:
                print("app is active")
            case .inactive:
                print("app is inactive")
            case .background:
                print("app is background")
            default:break
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
