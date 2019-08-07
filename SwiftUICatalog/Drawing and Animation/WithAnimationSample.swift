//
//  WithAnimationSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

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

#if DEBUG
struct WithAnimationSample_Previews: PreviewProvider {
    static var previews: some View {
        WithAnimationSample()
    }
}
#endif
