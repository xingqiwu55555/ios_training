//
//  MeView.swift
//  UI Component
//
//  Created by xmshen on 2022/8/12.
//

import SwiftUI

struct MeView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    ProfileView()
                } label: {
                    HStack {
                        Image(profileModel.profileImage)
                            .resizable()
                            .frame(width: 60, height: 60)

                        Text(profileModel.profileNick)
                            .fontWeight(.medium)
                            .padding(.leading, 8)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("我")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
