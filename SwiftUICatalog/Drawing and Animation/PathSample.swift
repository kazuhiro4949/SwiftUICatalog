//
//  PathSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct PathSample: View {
    var body: some View {
        Path { (path) in
            path.move(to: CGPoint(x: 20, y: 0))
            path.addLine(to: CGPoint(x: 20, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
        }
    }
}
#if DEBUG
struct PathSample_Previews: PreviewProvider {
    static var previews: some View {
        PathSample()
    }
}
#endif
