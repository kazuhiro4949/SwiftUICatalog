# SwiftUICatalog

Can you imagine how UIs works from API references?
I created a catalog app showing minimum implementation and execution result for each the API.

SwiftUI has many references to get started.
SwiftUI Tutorial is the best to know how much potential SwiftUI has.
But it is a littel complex to research how to use each the API.

This app currently targets iOS and refers to https://developer.apple.com/documentation/swiftui

# Requirement
- iOS 13+
- Xcode 11.0 beta5

# Feature
- [x] Showing appearance of each SwiftUI component
- [x] Implementing minimum sample codes of each API

# Usage
1. Clone this repository
2. Open the project in Xcode 11.0 beta5
3. Browse APIs like the doc

# Example
For example, SegmentPicker is implemented using Picker.

```swift
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
```

It is impemented in [this file](https://github.com/kazuhiro4949/SwiftUICatalog/blob/master/SwiftUICatalog/Views%20and%20Controls/Sample/SegmentedPickerSample.swift) and you can immediatly run in Simulator or check in Preview.


# Support status

There are some sections to categorize the APIs as follows.

https://developer.apple.com/documentation/swiftui 


I'm adding them sequentially.

- Views and Controls 80%  
- View Layout and Presentation 100% 
- Drawing and Animation  60%  
- ~Framework Integration~
- ~State and Data Flow~
- Gestures 0% 
- ~Previews~
- ViewModifier 0%

