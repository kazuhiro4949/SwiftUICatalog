//
//  Gesture.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

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
