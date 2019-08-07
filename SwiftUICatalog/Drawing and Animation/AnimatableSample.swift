//
//  AnimatableSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct AnimatableSample: View {
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            ColorAnimate(
                shape: Rectangle(),
                color: color
            ).frame(width: 200, height: 200)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
            
            Button("Animation") {
                self.color = .blue
            }
        }
        .navigationBarTitle("Animation")
    }
    
    struct ColorAnimate<S: Shape>: View, Animatable {
        var body: some View {
            shape.foregroundColor(color)
        }
        
        var shape: S
        var color: Color
        
        var animatableData: Color {
            get {
                color
            }
            set {
                color = newValue
            }
        }
    }
}

#if DEBUG
struct AnimatableSample_Previews: PreviewProvider {
    static var previews: some View {
        AnimatableSample()
    }
}
#endif
