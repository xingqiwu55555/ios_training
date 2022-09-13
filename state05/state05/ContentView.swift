//
//  ContentView.swift
//  state05
//
//  Created by xmshen on 2022/9/13.
//

import SwiftUI

struct ContentView: View {
    let title: String = "Compare Demo"
    @State private var showRealName: Bool = false

    var body: some View {
        VStack {
            Text("Title: \(title)")
            Button("Toggle Name") {
                showRealName.toggle()
            }
            Text("Current User: \(showRealName ? "黎明" : "姚明")")
            ScorePlate()
                .padding(.top, 20)
        }
    }
}

class Model: ObservableObject {
    init() {
        print("Model Created")
    }
    
    @Published var score: Int = 0
}

struct ScorePlate: View {
//    原始值，如果只是属性变化，无法通知视图层
//    @State var model = Model()
    
//    只要属性变化，视图层也会变化，并且被 SwiftUI 视图系统代为管理
//    @StateObject var model = Model()
    
//    只要属性变化，视图层也会变化，并且被相应视图层（这里是 ScorePlate）绑定。
    @ObservedObject var model = Model()
    
    init() {
        print("ScorePlate Created")
    }
    
    var body: some View {
        VStack {
            Button("+1") {
                model.score += 1
                print("model score: \(model.score)")
            }
            Text("Score: \(model.score)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
