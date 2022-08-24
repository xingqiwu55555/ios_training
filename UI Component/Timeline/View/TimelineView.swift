//
//  TimelineView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineView: View {
    @StateObject var viewModel = TimelineViewModel()

    var body: some View {
        List {
            TimelineHeaderView(profileDetail: viewModel.profileDetail)
                .listRowSeparator(.hidden)
            TimelineContentView(timelines: viewModel.timelines)
        }
        .listStyle(.plain)
        .navigationTitle("朋友圈")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
