//
//  EquatableViewSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct EquatableViewSample: View {
    @State var increment1: Int = 0
    @State var increment2: Int = 0

    var body: some View {
        VStack {
            HStack {
                Button("left increment") {
                    self.increment1 += 1
                }
                Button("right increment") {
                    self.increment2 += 1
                }
            }

            EquatableView(content: ComparedView(increment1: increment1, increment2: increment2))
        }
    }
}

struct ComparedView: View, Equatable {
    var increment1: Int
    var increment2: Int

    static func == (lhs: ComparedView, rhs: ComparedView) -> Bool {
        return lhs.increment1 == rhs.increment2
    }

    var body: some View {
        Text("increment1: \(increment1), increment2: \(increment2)")
    }
}

#if DEBUG
struct EquatableViewSample_Previews: PreviewProvider {
    static var previews: some View {
        EquatableViewSample()
    }
}
#endif
