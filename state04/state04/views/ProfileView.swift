//
//  ProfileView.swift
//  state04
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.theme) var theme: Theme
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(avatarColor())
            Text("欢迎使用\(theme.rawValue)主题")
        }
    }
    
    func avatarColor() -> Color {
        switch theme {
            case .sea:
                return .blue
            case .space:
                return .gray
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
