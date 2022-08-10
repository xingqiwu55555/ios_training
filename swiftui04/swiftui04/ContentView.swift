//
//  ContentView.swift
//  swiftui04
//
//  Created by xmshen on 2022/8/10.
//

import SwiftUI

enum Gender {
    case male
    case female
}

struct User: Identifiable {
    let id: String
    let name: String
    let gender: Gender
}

struct PaginationListView<T: Identifiable, Content: View>: View {
    let items: [T]
    @ViewBuilder
    let content: (T) -> Content
    var loadMoreAction: (() -> Void)?
    var reloadAction: (() -> Void)?

    var body: some View {
        List(items) { item in
            content(item)
                .onAppear {
                    if items.last?.id == item.id {
                        loadMoreAction?()
                    }
                }
        }
        .refreshable {
            reloadAction?()
        }
        .onAppear {
            reloadAction?()
        }
    }
    
    func loadable(action: @escaping () -> Void) -> Self {
        var copy = self
        copy.loadMoreAction = action
        return copy
    }
    
    func reload(action: @escaping () -> Void) -> Self {
        var copy = self
        copy.reloadAction = action
        return copy
    }
}

class ContentViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func reload() {
        users = [
            User(id: "1", name: "Zhang San1", gender: .female),
            User(id: "2", name: "Zhang San2", gender: .male),
            User(id: "3", name: "Zhang San3", gender: .male),
            User(id: "4", name: "Zhang San4", gender: .female),
            User(id: "5", name: "Zhang San5", gender: .male),
            User(id: "6", name: "Zhang San6", gender: .female),
        ]
    }
    
    func loadMore() {
        users.append(contentsOf: [
            User(id: "7", name: "Zhang San7", gender: .female),
            User(id: "8", name: "Zhang San8", gender: .male),
            User(id: "9", name: "Zhang San9", gender: .male),
            User(id: "10", name: "Zhang San10", gender: .female),
            User(id: "11", name: "Zhang San11", gender: .male),
            User(id: "12", name: "Zhang San12", gender: .female),
        ])
    }
}

struct ContentView: View {
//    let nameList = ["Zhang San", "Li Si", "Wang Wu"]
    
    @StateObject var viewModel = ContentViewModel()

    var body: some View {
        PaginationListView(items: viewModel.users) { user in
            VStack {
                Text("姓名：\(user.name)")
                HStack {
                    Text("性别：")
                    if user.gender == .male {
                        Image("male")
                    } else {
                        Image("female")
                    }
                    Text("ID：\(user.id)")
                }
            }
            .frame(height: 200)
        }
        .reload {
            viewModel.reload()
        }
        .loadable {
            viewModel.loadMore()
        }
    
        
//        List {
//            Text("Header")
//            ForEach(nameList, id: \.self) {
//                Text($0)
//            }
//            Text("Footer")
//        }
        
//        List {
//            Section("Z") {
//                Text("Zhang San")
//            }
//            Section("L") {
//                Text("Li Si")
//            }
//            Section("OTHER") {
//                Text("Wang Wu")
//            }
//        }
        
//        List(nameList, id: \.self) {
//            Text($0)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
