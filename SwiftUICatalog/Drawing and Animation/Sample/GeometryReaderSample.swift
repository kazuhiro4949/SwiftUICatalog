//
//  GeometryReaderSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct GeometryReaderSample: View {
    var body: some View {
        GeometryReader { proxy in
            Path { (path) in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 20, y: proxy.size.height - 20))
                path.addLine(to: CGPoint(x: proxy.size.width - 20, y: proxy.size.height - 20))
            }
        }.navigationBarTitle("GeometryReader")
    }
}

#if DEBUG
struct GeometryReaderSample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderSample()
    }
}
#endif
