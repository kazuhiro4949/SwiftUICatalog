//
//  SliderSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct SliderSample: View {
    @State var value: Float = 0
    
    var body: some View {
        HStack {
            Text("\(value)")
            Slider(value: $value).frame(width: 200)
        }
    }
}

#if DEBUG
struct SliderSample_Previews: PreviewProvider {
    static var previews: some View {
        SliderSample()
    }
}
#endif
