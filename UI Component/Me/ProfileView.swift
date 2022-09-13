//
//  ProfileView.swift
//  UI Component
//
//  Created by xmshen on 2022/9/13.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileModel: ProfileModel
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Image(profileModel.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .navigationBarTitle("个人")
        .navigationBarItems(
            trailing: Button {
                showSheet.toggle()
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.blue)
            }
        )
        .actionSheet(isPresented: $showSheet) {
            ActionSheet(
                title: Text("更多"),
                buttons: [
                    .default(
                        Text("修改头像"),
                        action: {
                            profileModel.updateProfileImage()
                            showSheet.toggle()
                        }
                    ),
                    .cancel()
                ]
            )
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
