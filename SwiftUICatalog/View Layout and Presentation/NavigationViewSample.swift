//
//  NavigationViewSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI


struct NavigationViewSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show NavigationView") {
            self.isShowing = true
        }
        .foregroundColor(.blue)
        .sheet(isPresented: $isShowing) {
            NavigationView {
                NavigationViewContentSample()
            }
        }
    }
}

#if DEBUG
struct NavigationViewSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewSample()
    }
}
#endif
