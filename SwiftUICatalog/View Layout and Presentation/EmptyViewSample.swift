//
//  EmptyViewSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct EmptyViewSample: View {
    var body: some View {
        EmptyView()
    }
}

#if DEBUG
struct EmptyViewSample_Previews: PreviewProvider {
    static var previews: some View {
        EmptyViewSample()
    }
}
#endif
