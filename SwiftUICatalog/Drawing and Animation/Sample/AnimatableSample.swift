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
