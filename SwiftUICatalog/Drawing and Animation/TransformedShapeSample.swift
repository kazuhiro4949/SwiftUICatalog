//
//  TransformedShapeSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct TransformedShapeSample: View {
    var body: some View {
        TransformedShape(
            shape: Rectangle(),
            transform: CGAffineTransform(translationX: 100, y: 100).rotated(by: CGFloat.pi/4)
        ).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("TransformedShape")
    }
}

#if DEBUG
struct TransformedShapeSample_Previews: PreviewProvider {
    static var previews: some View {
        TransformedShapeSample()
    }
}
#endif
