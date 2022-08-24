//
//  TimelineContentView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineContentView: View {
    let timelines: [Timeline]

    var body: some View {
        ForEach(timelines) { timeline in
            TimelineContentItemView(
                profileImageName: timeline.profileImageName,
                profileNick: timeline.profileNick,
                content: timeline.content,
                singlePhotoName: timeline.singlePhotoName,
                like: timeline.like
            ).listRowSeparator(.hidden)
        }
    }
}

struct TimelineContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineContentView(timelines: [
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
            )]
        )
    }
}
