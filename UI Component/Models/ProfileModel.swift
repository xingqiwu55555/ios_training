//
//  ProfileModel.swift
//  UI Component
//
//  Created by xmshen on 2022/9/13.
//

import Foundation
import SwiftUI

class ProfileModel: ObservableObject {
    @Published var profileNick: String = "桃子猪"
    @Published var profileImage: String = "timeline_profile_image"
    @Published var backgroundImageName: String = "timeline_profile_background"
    
    func updateProfileImage() {
        profileImage = "timeline_profile_image_tu"
    }
}
