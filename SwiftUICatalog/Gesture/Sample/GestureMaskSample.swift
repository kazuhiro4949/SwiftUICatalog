//
//  GestureMaskSample.swift
//  SwiftUICatalog
//
//  Created by kahayash on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct GestureMaskSample: View {
    @State var color = Color.blue
    
    var body: some View {
        let tap = TapGesture()
            .onEnded { _ in
                self.color = self.color == .blue ? .red : .blue
            }
        
        return Circle()
            .foregroundColor(color)
            .gesture(tap, including: GestureMask.all)
    }
}

#if DEBUG
struct GestureMaskSample_Previews: PreviewProvider {
    static var previews: some View {
        GestureMaskSample()
    }
}
#endif
