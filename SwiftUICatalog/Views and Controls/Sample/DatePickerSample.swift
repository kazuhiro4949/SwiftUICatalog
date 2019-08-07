//
//  DatePickerSample.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/7/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct DatePickerSample: View {
    @State var selection: Date = Date()
    
    var body: some View {
        DatePicker("Date Picker", selection: $selection).frame(width: 200)
    }
}


#if DEBUG
struct DatePickerSample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSample()
    }
}
#endif
