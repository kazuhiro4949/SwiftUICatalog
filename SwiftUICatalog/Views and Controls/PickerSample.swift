//
//  PickerSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct PickerSample: View {
    var elems = ["Short", "Tall", "Grande", "Venti"]
    @State var selection: Int = 0
    
    var body: some View {
        Picker(selection: $selection, label: Text("Label")) {
            ForEach(0..<elems.endIndex) {
                Text(self.elems[$0]).tag($0)
            }
        }.frame(width: 200)
    }
}

#if DEBUG
struct PickerSample_Previews: PreviewProvider {
    static var previews: some View {
        PickerSample()
    }
}
#endif
