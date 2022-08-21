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
        HStack(alignment: .top) {
            Image(profileImageName)
                .resizable()
                .frame(width: 60, height: 60)

                VStack(alignment: .leading) {
                    Text(profileNick)
                        .fontWeight(.medium)
                        .padding(.bottom, 1)
                    Text(content)
                        .fontWeight(.light)
                        .fixedSize(horizontal: false, vertical: true)
                    if singlePhotoName != nil {
                        
                            Image(singlePhotoName!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipped()
                        
                    }
                    if like != nil {
                        TimelinkContentLikeView(like: like!)
                    }
            }
        }
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
                                    like: ["草莓兔"])
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: ["草莓兔", "桃子桃子好好吃"])
        }
    }
}
