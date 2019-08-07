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
                NavigationLink("EmptyAnimatableData", destination: EmptyAnimatableDataSample())
                NavigationLink("AnyTransition", destination: AnyTransitionSample())
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
                NavigationLink("InsettableShape", destination: InsettableShapeSample())
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
                    NavigationLink("ForegroundStyle", destination: ForegroundStyleSample())
                    NavigationLink("FillStyle", destination: FillStyleSample())
                    NavigationLink("ShapeStyle", destination: ShapeStyleSample())
                    NavigationLink("RoundedCornerStyle", destination: RoundedCornerStyleSample())
                }
                Group {
                    Text("SelectionShapeStyle")
                    Text("SeparatorShapeStyle")
                    NavigationLink("StrokeStyle", destination: StrokeStyleSample())
                    Text("AnchorShapedStyle")
                }
            }
            Section(header: Text("Paints, Styles, and Gradients")) {
                Text("GeometryProxy")
                NavigationLink("GeometryReader", destination: GeometryReaderSample())
                Text("GeometryEffect")
                NavigationLink("Angle", destination: AngleSample())
                Text("Length")
                NavigationLink("Anchor", destination: AnchorSample())
                NavigationLink("UnitPoint", destination: UnitPointSample())
                NavigationLink("CoordinateSpace", destination: CoordinateSpaceSample())
                NavigationLink("ProjectionTransform", destination: ProjectionTransformSample())
                NavigationLink("VectorArithmetic", destination: VectorArithmeticSample())
            }
        }.navigationBarTitle("Drawing and Animation")
    }
}

struct AnimationSample: View {
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
                .animation(Animation.easeInOut)
            
            Button("Animation") {
                self.color = (self.color == .red) ? Color.blue : Color.red
            }
        }
        .navigationBarTitle("withAnimation")
    }
}

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

struct WithAnimationSample: View {
    @State var color: Color = .red
    var body: some View {
        VStack {
            Rectangle().frame(width: 100, height: 100).foregroundColor(color)
            
            Button("Animation") {
                withAnimation {
                    self.color = (self.color == .red) ? Color.blue : Color.red
                }
            }
        }
        .navigationBarTitle("withAnimation")
    }
}

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

struct EmptyAnimatableDataSample: View {
    var body: some View {
        EmptyView()
    }
}

struct AnyTransitionSample: View {
    var body: some View {
        EmptyView()
    }
}

struct RectangleSample: View {
    var body: some View {
        Rectangle().frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("Rectangle")
    }
}

struct EdgeSample: View {
    var body: some View {
        Rectangle().frame(width: 200, height: 200).foregroundColor(.red)
            .padding(Edge.Set.leading, 100)
            .navigationBarTitle("Edge")
    }
}

struct RoundedRectangleSample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("RoundedRectangle")
    }
}

struct CircleSample: View {
    var body: some View {
        Circle().frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("Circle")
    }
}

struct EllipseSample: View {
    var body: some View {
        Ellipse().frame(width: 100, height: 200).foregroundColor(.red)
        .navigationBarTitle("Ellipse")
    }
}

struct CapsuleSample: View {
    var body: some View {
        Capsule().frame(width: 100, height: 200).foregroundColor(.red)
        .navigationBarTitle("Capsule")
    }
}

struct PathSample: View {
    var body: some View {
        Path { (path) in
            path.move(to: CGPoint(x: 20, y: 0))
            path.addLine(to: CGPoint(x: 20, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
        }
    }
}

struct InsettableShapeSample: View {
    var body: some View {
        EmptyView()
    }
}

struct ScaledShapeSample: View {
    var body: some View {
        ScaledShape(
            shape: Rectangle(),
            scale: CGSize(width: 2, height: 2)
        ).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("ScaledShape")
    }
}

struct RotatedShapeSample: View {
    var body: some View {
        RotatedShape(
            shape: Rectangle(),
            angle: Angle(radians: Double.pi/4)
        ).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("RotatedShape")
    }
}

struct OffsetShapeSample: View {
    var body: some View {
        OffsetShape(shape: Rectangle(), offset: CGSize(width: 100, height: 100))
            .frame(width: 200, height: 200).foregroundColor(.red)
            .navigationBarTitle("OffsetShape")
    }
}

struct TransformedShapeSample: View {
    var body: some View {
        TransformedShape(
            shape: Rectangle(),
            transform: CGAffineTransform(translationX: 100, y: 100).rotated(by: CGFloat.pi/4)
        ).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("TransformedShape")
    }
}

struct ColorSample: View {
    var body: some View {
        Color.blue
            .navigationBarTitle("Color")
    }
}

struct ImagePaintSample: View {
    var body: some View {
        Rectangle()
            .fill(ImagePaint(image: Image(uiImage: UIImage(named: "Crown")!)))
        .navigationBarTitle("ImagePaint")
    }
}

struct LinearGradientSample: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
        )
        .navigationBarTitle("LinearGradient")
    }
}

struct AngularGradientSample: View {
    var body: some View {
        AngularGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: UnitPoint(x: 1, y: 0.5)
        )
        .navigationBarTitle("AngularGradient")
    }
}

struct RadialGradientSample: View {
    var body: some View {
        RadialGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: .center,
            startRadius: 0,
            endRadius: 400)
        .navigationBarTitle("RadialGradient")
    }
}

struct ForegroundStyleSample: View {
    var body: some View {
        EmptyView()
    }
}

struct FillStyleSample: View {
    var body: some View {
        EmptyView()
    }
}

struct RoundedCornerStyleSample: View {
    var body: some View {
        EmptyView()
    }
}

struct ShapeStyleSample: View {
    var body: some View {
        EmptyView()
    }
}

struct StrokeStyleSample: View {
    var body: some View {
        EmptyView()
    }
}

struct GeometryReaderSample: View {
    var body: some View {
        GeometryReader { proxy in
            Path { (path) in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 20, y: proxy.size.height - 20))
                path.addLine(to: CGPoint(x: proxy.size.width - 20, y: proxy.size.height - 20))
            }
        }.navigationBarTitle("GeometryReader")
    }
}

struct AngleSample: View {
    var body: some View {
        EmptyView()
    }
}

struct AnchorSample: View {
    var body: some View {
        EmptyView()
    }
}

struct UnitPointSample: View {
    var body: some View {
        EmptyView()
    }
}

struct CoordinateSpaceSample: View {
    var body: some View {
        EmptyView()
    }
}

struct ProjectionTransformSample: View {
    var body: some View {
        EmptyView()
    }
}

struct VectorArithmeticSample: View {
    var body: some View {
        EmptyView()
    }
}

#if DEBUG
struct DrawingAndAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DrawingAndAnimation()
    }
}
#endif
