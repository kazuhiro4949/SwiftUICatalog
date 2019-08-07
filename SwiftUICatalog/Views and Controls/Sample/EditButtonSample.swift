//
//  EditButtonSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct EditButtonSample: View {
    @State var sizes = ["Short", "Tall", "Grande", "Venti"]
    
    var body: some View {
        List {
            ForEach(sizes, id: \.self) {
                Text($0)
            }.onDelete { (indexSet) in
                self.sizes.remove(atOffsets: indexSet)
            }
        }
        .navigationBarItems(trailing: EditButton())
    }
}

#if DEBUG
struct EditButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonSample()
    }
}
#endif
