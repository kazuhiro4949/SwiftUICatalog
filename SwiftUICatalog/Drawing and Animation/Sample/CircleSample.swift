//
//  CircleSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct CircleSample: View {
    var body: some View {
        Circle().frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("Circle")
    }
}

#if DEBUG
struct CircleSample_Previews: PreviewProvider {
    static var previews: some View {
        CircleSample()
    }
}
#endif
