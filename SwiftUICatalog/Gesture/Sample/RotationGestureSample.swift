//
//  RotationGestureSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct RotationGestureSample: View {
    @State var angle: Angle = Angle(degrees: 0)
    var body: some View {
        let gesture = RotationGesture(minimumAngleDelta: Angle(degrees: 0)).onChanged { value in
            self.angle = value
        }.onEnded { (value) in
            self.angle = value
        }
        return Rectangle()
            .frame(width: 200, height: 200)
            .foregroundColor(.yellow)
            .rotationEffect(angle, anchor: .center)
            .gesture(gesture)
    }
}

#if DEBUG
struct RotationGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureSample()
    }
}
#endif
