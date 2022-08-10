//
//  ContentView.swift
//  swiftui05
//
//  Created by xmshen on 2022/8/10.
//

import SwiftUI


struct AdvertisementContent: View {
    let color: Color

    var body: some View {
        Text("广告")
            .frame(width: 200, height: 100)
            .background(color)
    }
}

struct AdvertisementView: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var currentIndex = 1
    
    var body: some View {
        ScrollView(.horizontal) {
            ScrollViewReader { reader in
                HStack(spacing: 0) {
                    AdvertisementContent(color: .red).id(1)
                    AdvertisementContent(color: .green).id(2)
                    AdvertisementContent(color: .yellow).id(3)
                }
                .onReceive(timer) { time in
                    currentIndex += 1
                    withAnimation {
                        reader.scrollTo(currentIndex, anchor: .center)
                    }
                }
            }
        }
        .frame(width: 200, height: 100)
        .background(.cyan)
    }
}

struct ContentView: View {
    var body: some View {
        AdvertisementView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
