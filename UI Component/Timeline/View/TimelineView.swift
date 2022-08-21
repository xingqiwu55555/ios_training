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
            TimelineHeaderView(nickname: "桃子猪", profileImageName: "timeline_profile_image", backgroundImageName: "timeline_profile_background")
            TimelineContentView(timelines: viewModel.timelines)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("朋友圈")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
