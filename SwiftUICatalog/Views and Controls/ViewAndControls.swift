//
//  ViewAndControls.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ViewAndControls: View {
    var body: some View {
        List {
            Section(header: Text("Text")) {
                NavigationLink("Text", destination: TextSample())
                NavigationLink("TextField", destination: TextFieldSample())
                NavigationLink("SecureField", destination: SecureFieldSample())
                NavigationLink("Font", destination: FontSample())
            }
            Section(header: Text("Images")) {
                NavigationLink("Image", destination: ImageSample())
            }
            Section(header: Text("Buttons")) {
                NavigationLink("Button", destination: ButtonSample())
                NavigationLink("NavigationLink", destination: NavigationLinkSample())
                NavigationLink("EditButton", destination: EditButtonSample())
            }
            Section(header: Text("Value Selectors")) {
                NavigationLink("Toggle", destination: ToggleSample())
                NavigationLink("Picker", destination: PickerSample())
                NavigationLink("DatePicker", destination: DatePickerSample())
                NavigationLink("Slider", destination: SliderSample())
                NavigationLink("Stepper", destination: StepperSample())
                NavigationLink("SegmentedControl", destination: SegmentedPickerSample())
            }
            Section(header: Text("Supporting Types")) {
                Text("StaticMember")
                NavigationLink("ViewBuilder", destination: ViewBuilderSample())
                NavigationLink("ViewModifier", destination: ViewModifierSample())
                Text("PullDownButton")
            }
        }.navigationBarTitle("Views And Controls")
    }
}

#if DEBUG
struct ViewAndControls_Previews: PreviewProvider {
    static var previews: some View {
        ViewAndControls()
    }
}
#endif
