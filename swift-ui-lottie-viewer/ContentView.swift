//
//  ContentView.swift
//  swift-ui-lottie-viewer
//
//  Created by h4nuko0n on 2020/07/04.
//

import SwiftUI

struct ContentView: View {
    @State var text = "hello world"
    var body: some View {
        VStack{
            LottieView(filename: "rocket")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
