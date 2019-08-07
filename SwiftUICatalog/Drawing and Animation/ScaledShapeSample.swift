//
//  ScaledShapeSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ScaledShapeSample: View {
    var body: some View {
        ScaledShape(
            shape: Rectangle(),
            scale: CGSize(width: 2, height: 2)
        ).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("ScaledShape")
    }
}

#if DEBUG
struct ScaledShapeSample_Previews: PreviewProvider {
    static var previews: some View {
        ScaledShapeSample()
    }
}
#endif
