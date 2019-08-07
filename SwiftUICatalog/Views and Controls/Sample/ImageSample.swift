//
//  ImageSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ImageSample: View {
    let imgFromSfSymbol = UIImage(
        systemName: "photo.fill",
        withConfiguration: UIImage.SymbolConfiguration(pointSize: 50)
    )!.withRenderingMode(.alwaysTemplate)
    
    var body: some View {
        Image(uiImage: imgFromSfSymbol)
            .foregroundColor(.red)
    }
}

#if DEBUG
struct ImageSample_Previews: PreviewProvider {
    static var previews: some View {
        ImageSample()
    }
}
#endif
