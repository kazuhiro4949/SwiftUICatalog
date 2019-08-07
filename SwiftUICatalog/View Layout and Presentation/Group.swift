//
//  Group.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct GroupSample: View {
    var body: some View {
        Group {
            Group {
                Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
                Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
                Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
            }
            Group {
                Circle().frame(width: 50, height: 50).foregroundColor(.red)
                Circle().frame(width: 50, height: 50).foregroundColor(.blue)
                Circle().frame(width: 50, height: 50).foregroundColor(.green)
            }
        }.navigationBarTitle("Group")
    }
}


#if DEBUG
struct Group_Previews: PreviewProvider {
    static var previews: some View {
        GroupSample()
    }
}
#endif
