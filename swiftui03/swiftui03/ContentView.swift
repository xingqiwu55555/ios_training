//
//  ContentView.swift
//  swiftui03
//
//  Created by xmshen on 2022/8/10.
//

import SwiftUI

struct CircleImage: ViewModifier {
    @State var lineWidth = CGFloat(4)
    @State var shadowRadius = CGFloat(7)

    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: lineWidth)
            }
            .shadow(radius: shadowRadius)
            .animation(.default.repeatForever(), value: lineWidth)
            .animation(.default.repeatForever(), value: shadowRadius)
            .onAppear {
                lineWidth = 2
                shadowRadius = 3
            }
    }
}

extension Image {
    func circle() -> some View {
        modifier(CircleImage())
    }
}

struct ContentView: View {
    var body: some View {

//        Image("personal")
//            .resizable()
//            .circle()
//            .frame(width: 120, height: 120)
        
        VStack {
            HikeView(hike: ModelData().hikes[0])
                .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
