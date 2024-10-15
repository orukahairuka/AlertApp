//
//  ContentView.swift
//  SyukudaiAlart
//
//  Created by 櫻井絵理香 on 2024/10/15.
//

import SwiftUI

struct ContentView: View {
    @State var timeVal = 1

    var body: some View {
        VStack {
            Text("Timer \(self.timeVal) seconds").font(.body)
            Picker(selection: self.$timeVal, label: Text("")) {
                Text("1").tag(1).font(.title2)
                Text("5").tag(5).font(.title2)
                Text("10").tag(10).font(.title2)
                Text("30").tag(30).font(.title2)
                Text("60").tag(60).font(.title2)
            }
            Button(action: {},label: {
                Text("Start")
            })
        }
    }
}

#Preview {
    ContentView()
}
