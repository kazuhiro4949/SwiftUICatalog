//
//  StepperSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct StepperSample: View {
    @State var value: Int = 0
    
    var body: some View {
        Stepper(value: $value, in: 0...10, label: { Text("value: \(value)")}).frame(width: 200)
    }
}

#if DEBUG
struct StepperSample_Previews: PreviewProvider {
    static var previews: some View {
        StepperSample()
    }
}
#endif
