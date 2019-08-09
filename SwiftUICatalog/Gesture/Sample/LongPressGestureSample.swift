//
//  LongPressGestureSample.swift
//  SwiftUICatalog
//
//  Created by kahayash on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct LongPressGestureSample: View {
    @GestureState var isDetectingLongPress = false
    
    var body: some View {
        let press = LongPressGesture(minimumDuration: 1)
            .updating($isDetectingLongPress) { currentState, gestureState, transaction in
                gestureState = currentState
            }
        
        return Circle()
            .fill(isDetectingLongPress ? Color.yellow : Color.green)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(press)
    }
}

#if DEBUG
struct LongPressGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureSample()
    }
}
#endif
