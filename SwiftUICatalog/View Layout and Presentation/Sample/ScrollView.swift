//
//  ScrollView.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ScrollViewVerticalSample: View {
    var body: some View {
        ScrollView {
            Rectangle().frame(width: 300, height: 300).foregroundColor(.red)
            Rectangle().frame(width: 300, height: 300).foregroundColor(.blue)
            Rectangle().frame(width: 300, height: 300).foregroundColor(.green)
        }.navigationBarTitle("ScrollView - Vertical")
    }
}

struct ScrollViewHorizontalSample: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Rectangle().frame(width: 300, height: 300).foregroundColor(.red)
                Rectangle().frame(width: 300, height: 300).foregroundColor(.blue)
                Rectangle().frame(width: 300, height: 300).foregroundColor(.green)
            }
        }.navigationBarTitle("ScrollView - Horizontal")
    }
}

#if DEBUG
struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewVerticalSample()
    }
}
#endif
