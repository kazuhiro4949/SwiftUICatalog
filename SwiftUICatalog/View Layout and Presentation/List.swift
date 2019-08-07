//
//  List.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ListSample: View {
    var body: some View {
        List {
            ForEach((0..<100), id: \.self) {
                Text("\($0)")
            }
        }.navigationBarTitle("List")
    }
}

#if DEBUG
struct List_Previews: PreviewProvider {
    static var previews: some View {
        ListSample()
    }
}
#endif
