//
//  ProfileViewModel.swift
//  state03
//
//  Created by xmshen on 2022/9/9.
//

import Foundation


@MainActor class ProfileModel: ObservableObject {
    @Published var avatar: String
    
    init (avatar: String) {
        self.avatar = avatar
    }
    
    func changeAvatar() {
        self.avatar = "bolt.fill"
    }
}
