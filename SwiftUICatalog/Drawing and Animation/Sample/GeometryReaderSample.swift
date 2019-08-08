//
//  GeometryReaderSample.swift
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

struct GeometryReaderSample: View {
    var body: some View {
        GeometryReader { proxy in
            Path { (path) in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 20, y: proxy.size.height - 20))
                path.addLine(to: CGPoint(x: proxy.size.width - 20, y: proxy.size.height - 20))
            }
        }.navigationBarTitle("GeometryReader")
    }
}

#if DEBUG
struct GeometryReaderSample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderSample()
    }
}
#endif
