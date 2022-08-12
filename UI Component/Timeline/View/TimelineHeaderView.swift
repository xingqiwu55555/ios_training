//
//  TimelineHeaderView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineHeaderView: View {
    let nickname: String
    let profileImageName: String
    let backgroundImageName: String
    
    var body: some View {
        Text("Hello World!")
    }
}

struct TimelineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineHeaderView(nickname: "桃子猪2222222", profileImageName: "timeline_profile_image", backgroundImageName: "timeline_profile_background")
    }
}
