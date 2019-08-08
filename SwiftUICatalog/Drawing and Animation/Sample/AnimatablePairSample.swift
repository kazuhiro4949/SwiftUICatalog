//  SwiftUICatalog
//
//  Copyright (c) 2019 Kazuhiro Hayashi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

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
            
            Button("Rotate and Color") {
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
