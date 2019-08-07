//
//  AngularGradientSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct AngularGradientSample: View {
    var body: some View {
        AngularGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: UnitPoint(x: 1, y: 0.5)
        )
        .navigationBarTitle("AngularGradient")
    }
}

#if DEBUG
struct AngularGradientSample_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientSample()
    }
}
#endif
