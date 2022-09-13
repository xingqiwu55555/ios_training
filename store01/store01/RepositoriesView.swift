//
//  ContentView.swift
//  store01
//
//  Created by xmshen on 2022/9/13.
//

import SwiftUI

struct RepositoriesView: View {
    @StateObject var viewModel: RepositoriesViewModel = RepositoriesViewModel()
    
    @State var repositories: String = ""
    
    var body: some View {
        VStack {
            Button("Search") {
//                viewModel.searchRepositories { string in
//                    repositories = string ?? ""
//                }
                
                Task {
                    repositories = await (viewModel.searchRepositoriesAsynchronously() ?? "")
                }
            }
            ScrollView(.vertical, showsIndicators: true) {
                Text(repositories.prefix(10000))
            }
        }
        .frame(alignment: .top)
    }
}

struct RepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoriesView()
    }
}
