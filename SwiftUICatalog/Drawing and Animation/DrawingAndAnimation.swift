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

struct DrawingAndAnimation: View {
    var body: some View {
        List {
            Section(header: Text("Essentials")) {
                Text("Shape")
                Text("SpapeView")
            }
            Section(header: Text("Animation")) {
                NavigationLink("Animation", destination: AnimationSample())
                NavigationLink("Animatable", destination: AnimatableSample())
                Text("AnimatableModifier")
                NavigationLink("withAnimation", destination: WithAnimationSample())
                NavigationLink("AnimatablePair", destination: AnimatablePairSample())
                Text("EmptyAnimatableData")
                Text("AnyTransition")
            }
            Section(header: Text("Shapes")) {
                NavigationLink("Rectangle", destination: RectangleSample())
                NavigationLink("Edge", destination: EdgeSample())
                NavigationLink("RoundedRectangle", destination: RoundedRectangleSample())
                NavigationLink("Circle", destination: CircleSample())
                NavigationLink("Ellipse", destination: EllipseSample())
                NavigationLink("Capsule", destination: CapsuleSample())
                NavigationLink("Path", destination: PathSample())
            }
            Section(header: Text("Transformed Shapes")) {
                Text("InsettableShape")
                NavigationLink("ScaledShape", destination: ScaledShapeSample())
                NavigationLink("RotatedShape", destination: RotatedShapeSample())
                NavigationLink("OffsetShape", destination: OffsetShapeSample())
                NavigationLink("TransformedShape", destination: TransformedShapeSample())
                Text("SizedShape")
                Text("StrokedShape")
                Text("TrimmedShape")
            }
            Section(header: Text("Paints, Styles, and Gradients")) {
                Group {
                    NavigationLink("Color", destination: ColorSample())
                    NavigationLink("ImagePaint", destination: ImagePaintSample())
                    Text("Gradient")
                    NavigationLink("LinearGradient", destination: LinearGradientSample())
                    NavigationLink("AngularGradient", destination: AngularGradientSample())
                    NavigationLink("RadialGradient", destination: RadialGradientSample())
                    Text("ForegroundStyle")
                    Text("FillStyle")
                    Text("ShapeStyle")
 
                }
                Group {
                    Text("StrokeStyle")
                    Text("RoundedCornerStyle")
                    Text("SelectionShapeStyle")
                    Text("SeparatorShapeStyle")
                    Text("StrokeStyle")
                    Text("AnchorShapedStyle")
                }
            }
            Section(header: Text("Paints, Styles, and Gradients")) {
                Group {
                    Text("GeometryProxy")
                    NavigationLink("GeometryReader", destination: GeometryReaderSample())
                    Text("GeometryEffect")
                    Text("Angle")
                    Text("Length")
                    Text("Anchor")
                }
                Group {
                    Text("UnitPoint")
                    Text("CoordinateSpace")
                    Text("ProjectionTransform")
                    Text("VectorArithmetic")
                }
            }
        }.navigationBarTitle("Drawing and Animation")
    }
}


#if DEBUG
struct DrawingAndAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DrawingAndAnimation()
    }
}
#endif
