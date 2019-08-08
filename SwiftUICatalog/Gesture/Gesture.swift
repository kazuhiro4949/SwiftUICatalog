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

struct Gesture: View {
    var body: some View {
        List {
            Section(header: Text("Basic Gestures")) {
                NavigationLink("TapGesture", destination: EmptyView())
                NavigationLink("LongPressGesture", destination: EmptyView())
                NavigationLink("DragGesture", destination: EmptyView())
                NavigationLink("MagnificationGesture", destination: EmptyView())
                NavigationLink("RotationGesture", destination: EmptyView())
            }
            Section(header: Text("Combined Gestures")) {
                NavigationLink("SequenceGesture", destination: EmptyView())
                NavigationLink("SimultaneousGesture", destination: EmptyView())
                NavigationLink("ExclusiveGesture", destination: EmptyView())
            }
            Section(header: Text("Custom Gestures")) {
                NavigationLink("Gesture", destination: EmptyView())
                NavigationLink("AnyGesture", destination: EmptyView())
            }
            Section(header: Text("Dynamic View Properties")) {
                NavigationLink("GestureState", destination: EmptyView())
                NavigationLink("GestureStateGesture", destination: EmptyView())
            }
            Section(header: Text("Gesture Support")) {
                NavigationLink("GestureMask", destination: EmptyView())
                NavigationLink("EventModifier", destination: EmptyView())
            }
        }.navigationBarTitle("Gesture")
    }
}

#if DEBUG
struct Gesture_Previews: PreviewProvider {
    static var previews: some View {
        Gesture()
    }
}
#endif
