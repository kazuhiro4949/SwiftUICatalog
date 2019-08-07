//
//  ZStack.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ZStackSample: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 150, height: 150).foregroundColor(.red)
            Rectangle().frame(width: 100, height: 100).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("ZStack")
    }
}

#if DEBUG
struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStackSample()
    }
}
#endif
