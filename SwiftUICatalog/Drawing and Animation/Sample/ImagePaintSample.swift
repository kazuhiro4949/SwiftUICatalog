//
//  ImagePaintSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ImagePaintSample: View {
    var body: some View {
        Rectangle()
            .fill(ImagePaint(image: Image(uiImage: UIImage(named: "Crown")!)))
        .navigationBarTitle("ImagePaint")
    }
}

#if DEBUG
struct ImagePaintSample_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintSample()
    }
}
#endif
