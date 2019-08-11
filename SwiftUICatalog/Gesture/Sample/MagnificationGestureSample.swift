//
//  MagnificationGestureSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct MagnificationGestureSample: View {
    @State var scale: CGFloat = 1
    
    var body: some View {
        let gesture = MagnificationGesture(minimumScaleDelta: 1)
        .onChanged { (value) in
            self.scale = value
        }
        .onEnded { (value) in
            self.scale = value
        }
        
        return Circle().foregroundColor(.red).scaleEffect(scale).gesture(gesture)
    }
}

#if DEBUG
struct MagnificationGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureSample()
    }
}
#endif
