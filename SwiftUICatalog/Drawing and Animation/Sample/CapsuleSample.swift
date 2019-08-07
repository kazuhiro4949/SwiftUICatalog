//
//  CapsuleSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct CapsuleSample: View {
    var body: some View {
        Capsule().frame(width: 100, height: 200).foregroundColor(.red)
        .navigationBarTitle("Capsule")
    }
}

#if DEBUG
struct CapsuleSample_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleSample()
    }
}
#endif
