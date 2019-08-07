//
//  SegmentedPickerSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct SegmentedPickerSample: View {
    var elems = ["Short", "Tall", "Grande", "Venti"]
    @State var selection: Int = 0
    
    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(0..<elems.endIndex) {
                Text(self.elems[$0]).tag($0)
            }
        }.pickerStyle(SegmentedPickerStyle())
        .frame(width: 200)
    }
}

#if DEBUG
struct SegmentedPickerSample_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPickerSample()
    }
}
#endif
