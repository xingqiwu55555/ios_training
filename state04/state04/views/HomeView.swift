//
//  HomeView.swift
//  state04
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        VStack {
            if colorScheme == .dark {
                Text("dark colorScheme").foregroundColor(.white)
            } else {
                Text("light colorScheme").foregroundColor(.black)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
