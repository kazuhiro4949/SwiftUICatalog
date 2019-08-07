//
//  DrawingAndAnimation.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

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
