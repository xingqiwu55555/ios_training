//
//  ContentView.swift
//  state01
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

struct NewPage: View {
    @Binding var showPage: Bool
    
    var body: some View {
        Button("关闭") {
            showPage = false
        }
    }
}

struct ContentView: View {
    @State var username: String = ""
    @State var like: Bool = false
    @State var showPage: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                TextField(
                    "请输入用户名",
                    text: $username
                )
                Text("您输入的是：\(username)")
            }
            HStack {
                Toggle("喜欢吃香蕉吗", isOn: $like)
                Text("我：\(like ? "喜欢" : "不喜欢")")
            }
            HStack {
                Button {
                    like.toggle()
                } label: {
                    Image(systemName: "star.fill")
                        .foregroundColor(like ? .yellow : .gray)
                }
            }
            HStack {
                Button("评论") {
                    showPage = true
                }
                .sheet(isPresented: $showPage) {
                    NewPage(showPage: $showPage)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
