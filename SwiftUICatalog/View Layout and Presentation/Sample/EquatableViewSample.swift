//
//  EquatableViewSample.swift
//  SwiftUICatalog
//
//  Copyright (c) 2019 Kazuhiro Hayashi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

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
