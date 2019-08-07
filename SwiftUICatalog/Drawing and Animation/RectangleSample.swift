//
//  RectangleSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct RectangleSample: View {
    var body: some View {
        Rectangle().frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("Rectangle")
    }
}

#if DEBUG
struct RectangleSample_Previews: PreviewProvider {
    static var previews: some View {
        RectangleSample()
    }
}
#endif
