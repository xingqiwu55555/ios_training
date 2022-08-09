//
//  ContentView.swift
//  swiftui01
//
//  Created by xmshen on 2022/8/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MapView()
            CircleImage()
            Text("Hello, xiaoming!")
                .font(.title)
                .fontWeight(.bold)
                
            HStack {
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
