//
//  RoundedRectangleSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct RoundedRectangleSample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 200, height: 200).foregroundColor(.red)
        .navigationBarTitle("RoundedRectangle")
    }
}

#if DEBUG
struct RoundedRectangleSample_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleSample()
    }
}
#endif
