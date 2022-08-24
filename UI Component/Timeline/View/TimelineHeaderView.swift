//
//  TimelineHeaderView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineHeaderView: View {
    let profileDetail: ProfileDetail
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(profileDetail.backgroundImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Text(profileDetail.nickname)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.semibold)
                Image(profileDetail.profileImageName)
                    .resizable()
                    .frame(width: 80, height: 80)
            }.offset(x: -20, y: 20)
        }
    }
}

struct TimelineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineHeaderView(
            profileDetail: ProfileDetail(
                id: "1",
                nickname: "桃子猪",
                profileImageName: "timeline_profile_image",
                backgroundImageName: "timeline_profile_background"
            )
        )
    }
}
