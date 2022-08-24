//
//  TimelineViewModel.swift
//  UI Component
//
//  Created by xmshen on 2022/8/21.
//

import SwiftUI

struct ProfileDetail: Identifiable {
    let id: String
    let nickname: String
    let profileImageName: String
    let backgroundImageName: String
}

struct Timeline: Identifiable {
    let id: String
    let profileNick: String
    let content: String
    let profileImageName: String
    let singlePhotoName: String?
    let like: [String]?
}

class TimelineViewModel: ObservableObject {
    @Published var profileDetail: ProfileDetail = ProfileDetail(
        id: "1",
        nickname: "桃子猪",
        profileImageName: "timeline_profile_image",
        backgroundImageName: "timeline_profile_background"
    )
    
    @Published var timelines: [Timeline] = [
        Timeline(
            id: "1",
            profileNick: "桃子猪",
            content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
            profileImageName: "timeline_profile_image",
            singlePhotoName: nil,
            like: nil
        ),
        Timeline(
            id: "2",
            profileNick: "桃子猪",
            content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
            profileImageName: "timeline_profile_image",
            singlePhotoName: nil,
            like: nil
        ),
        Timeline(
            id: "3",
            profileNick: "草莓🐰",
            content: "今年的支付宝开始集五福啦!去年只中了8.88, 希望今年可以多加几个零呢!",
            profileImageName: "timeline_profile_image_tu",
            singlePhotoName: nil,
            like: nil
        ),
        Timeline(
            id: "4",
            profileNick: "桃子猪",
            content: "好希望西安疫情早点结束, 我可以早一点回家过年.",
            profileImageName: "timeline_profile_image",
            singlePhotoName: nil,
            like: ["草莓🐰", "baby🐻"]
        ),
        Timeline(
            id: "5",
            profileNick: "芒果🦒",
            content: "草莓兔最近移情别恋, 都好久不和我在一起玩了. 哼~生气",
            profileImageName: "timeline_profile_image_lu",
            singlePhotoName: "timeline_profile_image_lu_photo1",
            like: ["草莓🐰"]
        ),
        Timeline(
            id: "6",
            profileNick: "草莓🐰",
            content: "今年的支付宝开始集五福啦!去年只中了8.88, 希望今年可以多加几个零呢!",
            profileImageName: "timeline_profile_image_tu",
            singlePhotoName: nil,
            like: nil
        ),
        Timeline(
            id: "7",
            profileNick: "桃子猪",
            content: "好希望西安疫情早点结束, 我可以早一点回家过年.",
            profileImageName: "timeline_profile_image",
            singlePhotoName: nil,
            like: ["草莓🐰", "baby🐻"]
        ),
        Timeline(
            id: "8",
            profileNick: "芒果🦒",
            content: "草莓兔最近移情别恋, 都好久不和我在一起玩了. 哼~生气",
            profileImageName: "timeline_profile_image_lu",
            singlePhotoName: "timeline_profile_image_lu_photo1",
            like: ["草莓🐰"]
        )
    ]
}
