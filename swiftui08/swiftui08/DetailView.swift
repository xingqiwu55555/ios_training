//
//  DetailView.swift
//  swiftui08
//
//  Created by xmshen on 2022/8/12.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("hello world")
            .onAppear {
                print("detail view onAppear")
            }
            .onDisappear {
                print("detail view onDisapear")
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
