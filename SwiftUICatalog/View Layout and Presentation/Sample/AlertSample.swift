//
//  AlertSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct AlertSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show alert") {
            self.isShowing = true
        }
        .foregroundColor(.blue)
        .alert(isPresented: $isShowing) {
            Alert(
                title: Text("title"),
                message: Text("message"),
                dismissButton: .default(Text("Close")))
        }
    }
}

#if DEBUG
struct AlertSample_Previews: PreviewProvider {
    static var previews: some View {
        AlertSample()
    }
}
#endif
