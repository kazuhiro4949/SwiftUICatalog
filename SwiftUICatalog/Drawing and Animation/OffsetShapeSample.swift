//
//  OffsetShapeSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct OffsetShapeSample: View {
    var body: some View {
        OffsetShape(shape: Rectangle(), offset: CGSize(width: 100, height: 100))
            .frame(width: 200, height: 200).foregroundColor(.red)
            .navigationBarTitle("OffsetShape")
    }
}

#if DEBUG
struct OffsetShapeSample_Previews: PreviewProvider {
    static var previews: some View {
        OffsetShapeSample()
    }
}
#endif
