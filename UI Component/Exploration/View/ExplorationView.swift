//
//  ExplorationView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct ExplorationView: View {
    var body: some View {
        NavigationView {
            ExplorationListView()
                .navigationTitle("发现")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExplorationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorationView()
    }
}
