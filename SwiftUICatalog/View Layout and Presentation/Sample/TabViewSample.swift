//
//  TabViewSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct TabViewSample: View {
    var body: some View {
        TabView {
            Text("View 1")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Tab1")
                }.tag(0)
            
            Text("View 2")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Tab2")
                }.tag(1)
        }
    }
}

#if DEBUG
struct TabViewSample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSample()
    }
}
#endif
