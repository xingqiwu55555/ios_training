//
//  ContentView.swift
//  swiftui02
//
//  Created by xmshen on 2022/8/9.
//

import SwiftUI

struct CircleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

extension Image {
    func circle() -> some View {
        modifier(CircleModifier())
    }
}


struct HappyNewYearCard<Content: View>: View {
    let title: String
    @ViewBuilder
    let content: () -> Content
    
    var body: some View {
        VStack {
            Text("Happy New Year\(title)").foregroundColor(.white)
            content()
            Text("2022. 1. 14")
        }
        .frame(width: 240)
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct ContentView: View {
    @State var show = false

    var body: some View {
//        Text("Hello, world!")
//            .padding()
//            .onAppear {
//                print("23234")
//            }
        
//        Button("Show") {
//            show = true
//        }
//        .alert(isPresented: $show) {
//            Alert(
//                title: Text("title"),
//                message: Text("message"),
//                dismissButton: .cancel()
//            )
//        }
        
        HappyNewYearCard(title: ", xiaoming", content: {
            Image("personal")
                .resizable()
                .circle()
                .frame(width: 120, height: 120)
            Text("From xiaohong")
        })
        // or
        HappyNewYearCard(title: ", xiaoming") {
            Image("personal")
                .resizable()
                .circle()
                .frame(width: 120, height: 120)
            Text("From xiaohong")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
