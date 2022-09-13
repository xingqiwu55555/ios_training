//
//  TimelineHeaderView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineHeaderView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(profileModel.backgroundImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Text(profileModel.profileNick)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.semibold)
                Image(profileModel.profileImage)
                    .resizable()
                    .frame(width: 80, height: 80)
            }.offset(x: -20, y: 20)
        }
    }
}

struct TimelineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineHeaderView()
    }
}
