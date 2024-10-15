//
//  TimerView.swift
//  SyukudaiAlart
//
//  Created by 櫻井絵理香 on 2024/10/15.
//

import SwiftUI

struct TimerView: View {
    @Binding var timerScreenShow:Bool
    @State var timeVal:Int
    let initialTime:Int

    var body: some View {
        if timeVal > -1 {
            VStack {
                ZStack {
                    Text("\(self.timeVal)").font(.system(size: 40))
                        .onAppear() {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                                if self.timeVal > -1 {
                                    self.timeVal -= 1
                                }
                            }
                        }
                    ProgressBar(progress: self.timeVal, initial: self.initialTime).frame(width: 90.0, height: 90.0)
                }
                Button(action: {
                    self.timerScreenShow = false
                }, label: {
                    Text("Cancel")
                        .foregroundColor(Color.red)
                })
                .padding(.top)
            }
        } else {
            Button(action: {
                self.timerScreenShow = false
            }, label: {
                Text("Done!")
                    .font(.title)
                    .foregroundColor(Color.green)
            })
        }
    }
}


