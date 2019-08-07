//
//  RadialGradientSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct RadialGradientSample: View {
    var body: some View {
        RadialGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: .center,
            startRadius: 0,
            endRadius: 400)
        .navigationBarTitle("RadialGradient")
    }
}

#if DEBUG
struct RadialGradientSample_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientSample()
    }
}
#endif
