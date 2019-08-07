//
//  ActionSheetSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ActionSheetSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show action sheet") {
            self.isShowing = true
        }
        .foregroundColor(.blue)
        .actionSheet(isPresented: $isShowing) {
            ActionSheet(
                title: Text("title"),
                message: Text("message"),
                buttons: [
                    .default(Text("default")),
                    .destructive(Text("destructive")),
                    .cancel()
            ])
        }

    }
}


#if DEBUG
struct ActionSheetSample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetSample()
    }
}
#endif
