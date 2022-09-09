//
//  ProfileView.swift
//  state03
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        VStack {
            Image(systemName: profileModel.avatar)
            Spacer()
            
            Button {
                profileModel.changeAvatar()
            } label: {
                Text("修改头像")
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
