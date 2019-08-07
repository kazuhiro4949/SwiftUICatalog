//
//  LinearGradientSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct LinearGradientSample: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
        )
        .navigationBarTitle("LinearGradient")
    }
}

#if DEBUG
struct LinearGradientSample_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientSample()
    }
}
#endif
