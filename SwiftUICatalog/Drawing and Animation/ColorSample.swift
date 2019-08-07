//
//  ColorSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ColorSample: View {
    var body: some View {
        Color.blue
            .navigationBarTitle("Color")
    }
}

#if DEBUG
struct ColorSample_Previews: PreviewProvider {
    static var previews: some View {
        ColorSample()
    }
}
#endif
