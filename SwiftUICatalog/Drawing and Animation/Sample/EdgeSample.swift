//
//  EdgeSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct EdgeSample: View {
    var body: some View {
        Rectangle().frame(width: 200, height: 200).foregroundColor(.red)
            .padding(Edge.Set.leading, 100)
            .navigationBarTitle("Edge")
    }
}

#if DEBUG
struct EdgeSample_Previews: PreviewProvider {
    static var previews: some View {
        EdgeSample()
    }
}
#endif
