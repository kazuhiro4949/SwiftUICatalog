//
//  ButtonSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ButtonSample: View {
    var body: some View {
        Button("Button") {
            print("Tapped")
        }
        .foregroundColor(.blue)
    }
}

#if DEBUG
struct ButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSample()
    }
}
#endif
