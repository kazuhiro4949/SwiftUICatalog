//
//  DragGestureSample.swift
//  SwiftUICatalog
//
//  Created by kahayash on 8/9/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct DragGestureSample: View {
    @State var offset: CGSize = .zero
    @State var color: Color = .red
    var body: some View {
        let gesture = DragGesture(minimumDistance: 10, coordinateSpace: .local)
            .onChanged({ (value) in
                self.color = .blue
                self.offset = CGSize(width: self.offset.width + value.translation.width, height: self.offset.height + value.translation.height)
            })
        .onEnded { (value) in
            self.color = .red
            self.offset = CGSize(width: self.offset.width + value.translation.width, height: self.offset.height + value.translation.height)
        }
        return Circle()
            .fill(color)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(gesture)
            .offset(offset)
    }
}

#if DEBUG
struct DragGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureSample()
    }
}
#endif
