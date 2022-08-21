//
//  ExplorationListView.swift
//  UI Component
//
//  Created by xmshen on 2022/8/12.
//

import SwiftUI

struct ExplorationListView: View {
    
    var body: some View {
        List {
            NavigationLink {
                TimelineView()
            } label: {
                Label("朋友圈", systemImage: "circle.circle.fill")
            }
            Label("游戏", systemImage: "gamecontroller.fill")
            Label("游戏", systemImage: "circle.dashed")
        }
    }
}

struct ExplorationListView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorationListView()
    }
}
