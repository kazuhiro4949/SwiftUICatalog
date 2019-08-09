//
//  TapGestureSample.swift
//  SwiftUICatalog
//
//  Created by kahayash on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct TapGestureSample: View {
    @State var color = Color.blue
    
    var body: some View {
        let tap = TapGesture()
            .onEnded { _ in
                self.color = self.color == .blue ? .red : .blue
            }
        
        return Circle()
            .fill(color)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(tap)
    }
}

#if DEBUG
struct TapGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureSample()
    }
}
#endif
