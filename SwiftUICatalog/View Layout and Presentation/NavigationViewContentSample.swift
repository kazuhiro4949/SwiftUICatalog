//
//  NavigationViewContentSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct NavigationViewContentSample: View {
    var body: some View {
        NavigationLink("push", destination:  NavigationViewSample())
    }
}

#if DEBUG
struct NavigationViewContentSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewContentSample()
    }
}
#endif
