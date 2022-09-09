//
//  ContentView.swift
//  state02
//
//  Created by xmshen on 2022/9/9.
//

import SwiftUI

class CreateUsernameViewModel: ObservableObject {
    @Binding var users: [String]
    
    init(users: Binding<[String]>) {
        _users = users
    }
    
    func create(username: String) {
        if (username.isEmpty) {
            return
        }
        users.append(username)
    }
}

struct CreateUsernameView: View {
    @State var username: String = ""
//    由自己创建的用 @StateObject —— 最佳实践
    @StateObject var viewmodel: CreateUsernameViewModel
    @Environment(\.dismiss) var dismiss
    
    init(users: Binding<[String]>) {
        _viewmodel = StateObject(wrappedValue: CreateUsernameViewModel(users: users))
        
    }
    
    var body: some View {
        Form {
            TextField("用户名", text: $username)
            Button("添加用户给") {
                viewmodel.create(username: username)
                dismiss()
            }
        }
    }
}

struct NewCreateUsernameView: View {
    @State private var username: String = ""
//   外来传来的用 @ObservedObject
    @ObservedObject private var viewmodel: ContentViewModel
    @Environment(\.dismiss) var dismiss
    
    init(viewModel: ContentViewModel) {
        _viewmodel = ObservedObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Form {
            TextField("用户名", text: $username)
            Button("添加用户给") {
                viewmodel.create(username: username)
                dismiss()
            }
        }
    }
}

class ContentViewModel: ObservableObject {
    @Published var users: [String] = []
    
    func create(username: String) {
        if (username.isEmpty) {
            return
        }
        users.append(username)
    }
}

struct ContentView: View {
    @StateObject var viewmodel: ContentViewModel = ContentViewModel()
    @State var showCreatePage: Bool = false
    @State private var showNewCreatePage: Bool = false
    
    var body: some View {
        NavigationView {
            List(viewmodel.users, id: \.self) {
                Text($0)
            }
            .navigationTitle("List")
            .toolbar {
                Button {
//                    showCreatePage = true
                    showNewCreatePage = true
                } label: {
                    Image(systemName: "plus.square.fill")
                }
            }
            .sheet(isPresented: $showCreatePage) {
                CreateUsernameView(users: $viewmodel.users)
            }
            .sheet(isPresented: $showNewCreatePage) {
                NewCreateUsernameView(viewModel: viewmodel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
