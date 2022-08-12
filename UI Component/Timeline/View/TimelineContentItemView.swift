//
//  TimelineContentItemView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineContentItemView: View {
    let profileImageName: String
    let profileNick: String
    let content: String
    let singlePhotoName: String?
    let like: [String]?
    
    var body: some View {
        Text("Hello World!")
    }
}

struct TimelineContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪", content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName:
                                        nil,
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: ["草莓兔"])
        }
    }
}
