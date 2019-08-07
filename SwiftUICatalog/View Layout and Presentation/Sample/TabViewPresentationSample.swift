//
//  TabViewPresentationSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct TabViewPresentationSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show TabView") {
            self.isShowing = true
        }
        .foregroundColor(.blue)
        .sheet(isPresented: $isShowing) {
            TabViewSample()
        }
    }
}

#if DEBUG
struct TabViewPresentationSample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPresentationSample()
    }
}
#endif
