//
//  ContentView.swift
//  swiftui06
//
//  Created by xmshen on 2022/8/11.
//

import SwiftUI

struct CellView: View {
    let name: String
    
    var body: some View {
        VStack {
            Text("用户：\(name)")
            Image("personal").resizable().frame(width: 60, height: 60)
        }
    }
}

struct DetailView: View {
    let name: String
    
    var body: some View {
        VStack {
            Text("用户：\(name)")
            Image("personal").resizable().frame(width: 60, height: 60)
        }
    }
}

struct ContentView: View {
    @State var showPaymentView = false
    @State var currentSelection: String? = nil
    
    var body: some View {
        NavigationView {
//            List {
//                NavigationLink(destination: Text("详情1")) {
//                    CellView(name: "1")
//                }
//                NavigationLink("User 2") {
//                    CellView(name: "2")
//                }
//                NavigationLink("User 3") {
//                    CellView(name: "3")
//                }
//            }
            
            VStack {
                NavigationLink(tag: "A", selection: $currentSelection) {
                    Text("A详情")
                    DetailView(name: "张三")
                } label: {
                    EmptyView()
                }
                NavigationLink(tag: "B", selection: $currentSelection) {
                    Text("B详情")
                } label: {
                    EmptyView()
                }
                Button("去A") {
                    currentSelection = "A"
                }
                Button("去B") {
                    currentSelection = "B"
                }
            }
            

//            NavigationLink(isActive: $showPaymentView) {
//                Text("支付详情")
//            } label: {
//                Button("支付") {
//                    showPaymentView = true
//                }
//            }
            .navigationTitle("Topic")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                HStack {
                    Button("添加") {
                        print("添加")
                    }
                    Button("修改") {
                        print("修改")
                    }
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
