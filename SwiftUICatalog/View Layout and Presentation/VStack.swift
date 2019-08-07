//
//  VStack.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI


struct VStackSample: View {
    var body: some View {
        VStack {
            Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("VStack")
    }
}

#if DEBUG
struct VStack_Previews: PreviewProvider {
    static var previews: some View {
        VStackSample()
    }
}
#endif
