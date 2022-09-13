//
//  ContentView.swift
//  state04
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

enum Theme: String {
    case sea
    case space
}

class ThemeEnvironmentKey: EnvironmentKey {
    static var defaultValue: Theme = .sea
}

extension EnvironmentValues {
    var theme: Theme {
        get {
            self[ThemeEnvironmentKey.self]
        }
        set {
            self[ThemeEnvironmentKey.self] = newValue
        }
    }
}

struct ContentView: View {
    @State var theme: Theme = .sea

    var body: some View {
        ZStack(alignment: .top) {
            TabView {
                HomeView()
                    .tabItem {
                        Label("主页", systemImage: "house.fill")
                    }
                ExploreView()
                    .tabItem {
                        Label("探索", systemImage: "ellipsis.circle.fill")
                    }
                ProfileView()
                    .tabItem {
                        Label("我的", systemImage: "person.crop.circle.fill")
                    }
            }
            
            HStack {
                Spacer()
                Button {
                    theme = theme == .sea ? .space : .sea
                } label: {
                    Text("更改 Theme")
                }.padding(.trailing, 10)
            }
        }.environment(\.theme, theme)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
