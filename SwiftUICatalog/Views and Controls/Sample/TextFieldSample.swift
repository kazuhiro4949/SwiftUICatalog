//
//  TextFieldSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct TextFieldSample: View {
    @State var inputText: String = ""
    
    var body: some View {
        VStack {
            TextField("text field", text: $inputText)
                .frame(width: 200, height: 50)
            
            Text("input: " + inputText)
        }
    }
}

#if DEBUG
struct TextFieldSample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSample()
    }
}
#endif
