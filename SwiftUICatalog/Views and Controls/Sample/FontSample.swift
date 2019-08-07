//
//  FontSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct FontSample: View {
    var body: some View {
        Text("30pt System Font")
            .font(Font.system(size: 30))
    }
}

#if DEBUG
struct FontSample_Previews: PreviewProvider {
    static var previews: some View {
        FontSample()
    }
}
#endif
