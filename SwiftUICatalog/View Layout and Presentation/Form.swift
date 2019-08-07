//
//  Form.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct FormSample: View {
    var body: some View {
        Form {
            Section(header: Text("Header 1"), footer: Text("Footer 1")) {
                Text("cell 1")
                Text("cell 2")
                Text("cell 3")
            }
            Section(header: Text("Header 2"), footer: Text("Footer 2")) {
                Text("cell 1")
                Text("cell 2")
                Text("cell 3")
            }
        }.navigationBarTitle("Form")
    }
}


#if DEBUG
struct Form_Previews: PreviewProvider {
    static var previews: some View {
        FormSample()
    }
}
#endif
