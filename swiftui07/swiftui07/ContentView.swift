//
//  ContentView.swift
//  swiftui07
//
//  Created by xmshen on 2022/8/11.
//

import SwiftUI

struct Content1View: View {
    var body: some View {
//        VStack {
        ScrollView {
            Text("Header")
                .frame(maxWidth: .infinity, minHeight: 300)
                .border(.green)
            
            Image("personal")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .layoutPriority(0)
            Text("这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！")
                .fixedSize(horizontal: false, vertical: true)
//                .lineLimit(2)
//                .layoutPriority(1)
            
            Text("Footer")
                .frame(maxWidth: .infinity, minHeight: 300)
                .border(.red)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView2:View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?

    var body: some View {
        if horizontalSizeClass == .regular {
            HStack {
                Image("personal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Text("这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！")
            }
        } else {
            VStack {
                Image("personal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Text("这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！")
            }
        }
    }
}

struct RotateViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

extension View {
    func onRotate(perform action: @escaping (UIDeviceOrientation) ->Void) -> some View {
        modifier(RotateViewModifier(action: action))
    }
}

struct ContentView:View {
    @State var orientation: UIDeviceOrientation = .portrait

    var body: some View {
        VStack {
            if orientation.isLandscape {
                HStack {
                    Image("personal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                    Text("这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！")
                }
            } else {
                VStack {
                    Image("personal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                    Text("这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！这是描述！！！！")
                }
            }
        }.onRotate { newOrientation in
            orientation = newOrientation
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView().environment(\.horizontalSizeClass, .regular)
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
