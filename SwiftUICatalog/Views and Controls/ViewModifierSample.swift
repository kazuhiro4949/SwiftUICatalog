//
//  ViewModifierSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ViewModifierSample: View {
    var body: some View {
        Rectangle().modifier(Green50x50Modifier())
    }
    
    struct Green50x50Modifier: ViewModifier {
        func body(content: Content) -> some View {
            content.foregroundColor(.green).frame(width: 50, height: 50)
        }
    }
}

#if DEBUG
struct ViewModifierSample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierSample()
    }
}
#endif
