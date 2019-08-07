//
//  AnyViewSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct AnyViewSample: View {
    var body: some View {
        AnyView(Rectangle().frame(width: 50, height: 50).foregroundColor(.red))
    }
}

#if DEBUG
struct AnyViewSample_Previews: PreviewProvider {
    static var previews: some View {
        AnyViewSample()
    }
}
#endif
