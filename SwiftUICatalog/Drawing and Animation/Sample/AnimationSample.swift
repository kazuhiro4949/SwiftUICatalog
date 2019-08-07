//
//  AnimationSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

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

#if DEBUG
struct AnimationSample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationSample()
    }
}
#endif
