//
//  ToggleSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ToggleSample: View {
    @State var isOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            return Text("Label")
        }.frame(width: 100)
    }
}

#if DEBUG
struct ToggleSample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSample()
    }
}
#endif
