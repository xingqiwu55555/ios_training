//
//  TimelinkContentLikeView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI
//爱心图片使用systemName: "heart"
struct TimelinkContentLikeView: View {
    let like: [String]
    
    var body: some View {
        Text("Hello World!")
    }
}

struct TimelinkContentLikeView_Previews: PreviewProvider {
    static var previews: some View {
        TimelinkContentLikeView(like: ["草莓🐰"])
    }
}
