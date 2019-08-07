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
                NavigationLink("ViewBuilder", destination: ViewBuilderSample())
                NavigationLink("ViewModifier", destination: ViewModifierSample())
            }
        }.navigationBarTitle("Views And Controls")
    }
}

struct TextSample: View {
    var body: some View {
        Text("Text")
    }
}

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

struct SecureFieldSample: View {
    @State var inputText: String = ""
    
    var body: some View {
        VStack {
            SecureField("secure field", text: $inputText)
                .frame(width: 200, height: 50)
            
            Text("input: " + inputText)
        }
    }
}

struct FontSample: View {
    var body: some View {
        Text("30pt System Font")
            .font(Font.system(size: 30))
    }
}

struct ImageSample: View {
    let imgFromSfSymbol = UIImage(
        systemName: "photo.fill",
        withConfiguration: UIImage.SymbolConfiguration(pointSize: 50)
    )!.withRenderingMode(.alwaysTemplate)
    
    var body: some View {
        Image(uiImage: imgFromSfSymbol)
            .foregroundColor(.red)
    }
}

struct ButtonSample: View {
    var body: some View {
        Button("Button") {
            print("Tapped")
        }
        .foregroundColor(.blue)
    }
}

struct NavigationLinkSample: View {
    var body: some View {
        NavigationLink("NavigationLink", destination: NavigationLinkSample())
    }
}

struct EditButtonSample: View {
    @State var sizes = ["Short", "Tall", "Grande", "Venti"]
    
    var body: some View {
        List {
            ForEach(sizes, id: \.self) {
                Text($0)
            }.onDelete { (indexSet) in
                self.sizes.remove(atOffsets: indexSet)
            }
        }
        .navigationBarItems(trailing: EditButton())
    }
}

struct ToggleSample: View {
    @State var isOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            return Text("Label")
        }.frame(width: 100)
    }
}

struct PickerSample: View {
    var elems = ["Short", "Tall", "Grande", "Venti"]
    @State var selection: Int = 0
    
    var body: some View {
        Picker(selection: $selection, label: Text("Label")) {
            ForEach(0..<elems.endIndex) {
                Text(self.elems[$0]).tag($0)
            }
        }.frame(width: 200)
    }
}

struct DatePickerSample: View {
    @State var selection: Date = Date()
    
    var body: some View {
        DatePicker("Date Picker", selection: $selection).frame(width: 200)
    }
}

struct SliderSample: View {
    @State var value: Float = 0
    
    var body: some View {
        HStack {
            Text("\(value)")
            Slider(value: $value).frame(width: 200)
        }
    }
}

struct StepperSample: View {
    @State var value: Int = 0
    
    var body: some View {
        Stepper(value: $value, in: 0...10, label: { Text("value: \(value)")}).frame(width: 200)
    }
}

struct SegmentedPickerSample: View {
    var elems = ["Short", "Tall", "Grande", "Venti"]
    @State var selection: Int = 0
    
    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(0..<elems.endIndex) {
                Text(self.elems[$0]).tag($0)
            }
        }.pickerStyle(SegmentedPickerStyle())
        .frame(width: 200)
    }
}

struct ViewBuilderSample: View {
    var body: some View {
        ViewBuilder.buildBlock(
            Rectangle().frame(width: 50, height: 50).foregroundColor(.red),
            Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
        )
    }
}

struct ViewModifierSample: View {
    var body: some View {
        Rectangle().modifier(Green50x50Modifier())
    }
    
    struct Green50x50Modifier: ViewModifier {
        func body(content: Content) -> some View {
            content.foregroundColor(.green).frame(width: 50, height: 50)
        }
    }
}

#if DEBUG
struct ViewAndControls_Previews: PreviewProvider {
    static var previews: some View {
        ViewAndControls()
    }
}
#endif
