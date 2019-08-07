//
//  NavigationLinkSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct NavigationLinkSample: View {
    var body: some View {
        NavigationLink("NavigationLink", destination: NavigationLinkSample())
    }
}

#if DEBUG
struct NavigationLinkSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkSample()
    }
}
#endif
