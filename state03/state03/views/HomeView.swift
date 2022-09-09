//
//  HomeView.swift
//  state03
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: profileModel.avatar)
                    .padding(16)
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ProfileModel(avatar: "flame.fill"))
    }
}
