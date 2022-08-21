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
        HStack {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 20, height: 20)
            ForEach(like, id: \.self) { name in
                Text(name)
                    .fontWeight(.light)
            }
        }
        .frame(height: 24)
        .foregroundColor(.white)
        .background(.gray)
    }
}

struct TimelinkContentLikeView_Previews: PreviewProvider {
    static var previews: some View {
        TimelinkContentLikeView(like: ["草莓🐰"])
    }
}
