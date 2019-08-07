//
//  TupleViewSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct TupleViewSample: View {
    var body: some View {
        TupleView(
            (Rectangle().frame(width: 50, height: 50).foregroundColor(.red),
             Rectangle().frame(width: 50, height: 50).foregroundColor(.blue))
        )
    }
}

#if DEBUG
struct TupleViewSample_Previews: PreviewProvider {
    static var previews: some View {
        TupleViewSample()
    }
}
#endif
