//
//  AnimatablePairSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct AnimatablePairSample: View {
    @State var rotation: CGFloat = 1
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            ColorAndRotate(
                shape: Rectangle(),
                color: AnimatablePairSample.ColorAnimate(color: color),
                rotate: AnimatablePairSample.RotateAnimate(
                    value: rotation
                )
            ).frame(width: 200, height: 200)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
            
            Button.init("Rotate and Color") {
                self.rotation = 1.5
                self.color = .blue
            }
        }
    }
    
    struct ColorAndRotate<S: Shape>: View, Animatable {
        var body: some View {
            shape.scale(rotate.value).foregroundColor(color.color)
        }
        
        var shape: S
        var color: ColorAnimate
        var rotate: RotateAnimate
        
        var animatableData: AnimatablePair<ColorAnimate.AnimatableData, RotateAnimate.AnimatableData> {
            get {
                AnimatablePair(color.animatableData, rotate.animatableData)
            }
            set {
                color.animatableData = newValue.first
                rotate.animatableData = newValue.second
            }
        }
    }
    
    struct ColorAnimate: Animatable {
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
    
    struct RotateAnimate: Animatable {
        var value: CGFloat
        
        var animatableData: CGFloat {
            get {
                value
            }
            set {
                value = newValue
            }
        }
    }
}

#if DEBUG
struct AnimatablePairSample_Previews: PreviewProvider {
    static var previews: some View {
        AnimatablePairSample()
    }
}
#endif
