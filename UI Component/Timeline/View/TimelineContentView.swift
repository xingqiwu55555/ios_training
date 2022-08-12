//
//  TimelineContentView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineContentView: View {
    var body: some View {
        VStack {
            TimelineContentItemView(profileImageName: "timeline_profile_image", profileNick: "桃子猪", content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.", singlePhotoName: nil, like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image_tu", profileNick: "草莓🐰", content: "今年的支付宝开始集五福啦!去年只中了8.88, 希望今年可以多加几个零呢!", singlePhotoName: nil, like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image", profileNick: "桃子猪", content: "好希望西安疫情早点结束, 我可以早一点回家过年.", singlePhotoName: nil, like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image_lu", profileNick: "芒果🦒", content: "草莓兔最近移情别恋, 都好久不和我在一起玩了. 哼~生气", singlePhotoName: "timeline_profile_image_lu_photo1", like: ["草莓🐰"])
        }
    }
}

struct TimelineContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineContentView()
    }
}
