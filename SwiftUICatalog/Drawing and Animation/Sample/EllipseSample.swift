//
//  EllipseSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct EllipseSample: View {
    var body: some View {
        Ellipse().frame(width: 100, height: 200).foregroundColor(.red)
        .navigationBarTitle("Ellipse")
    }
}

#if DEBUG
struct EllipseSample_Previews: PreviewProvider {
    static var previews: some View {
        EllipseSample()
    }
}
#endif
