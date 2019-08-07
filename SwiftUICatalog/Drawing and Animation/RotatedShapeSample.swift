//
//  RotatedShapeSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct RotatedShapeSample: View {
    var body: some View {
        RotatedShape(
            shape: Rectangle(),
            angle: Angle(radians: Double.pi/4)
        ).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("RotatedShape")
    }
}
#if DEBUG
struct RotatedShapeSample_Previews: PreviewProvider {
    static var previews: some View {
        RotatedShapeSample()
    }
}
#endif
