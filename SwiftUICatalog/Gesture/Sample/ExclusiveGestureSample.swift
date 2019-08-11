//
//  ExclusiveGestureSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ExclusiveGestureSample: View {
    @State var scale: CGFloat = 1
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        let rotationGesture = RotationGesture(minimumAngleDelta: Angle(degrees: 0)).onChanged { value in
            self.angle = value
        }.onEnded { (value) in
            self.angle = value
        }
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 1)
        .onChanged { (value) in
            self.scale = value
        }
        .onEnded { (value) in
            self.scale = value
        }
        
        
        let exclusiveGesture = ExclusiveGesture(rotationGesture, magnificationGesture)
        return Rectangle()
            .frame(width: 200, height: 200)
            .foregroundColor(.green)
            .rotationEffect(angle, anchor: .center)
            .scaleEffect(scale)
            .gesture(exclusiveGesture)
    }
}

#if DEBUG
struct ExclusiveGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGestureSample()
    }
}
#endif
