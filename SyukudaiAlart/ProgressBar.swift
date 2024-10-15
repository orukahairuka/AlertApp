//
//  Progress.swift
//  SyukudaiAlart
//
//  Created by 櫻井絵理香 on 2024/10/15.
//

import SwiftUI

struct ProgressBar: View {
    let progress: Int
    let initial: Int

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 15.0)
                .opacity(0.3)
                .foregroundColor(Color.red)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(Float(self.progress) / Float(self.initial), 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
        }
    }
}
