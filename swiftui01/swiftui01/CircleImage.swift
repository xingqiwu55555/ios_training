//
//  CircleImage.swift
//  swiftui01
//
//  Created by xmshen on 2022/8/9.
//

import Foundation
import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("personal")
            .resizable()
            .frame(width: 120, height: 120, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

