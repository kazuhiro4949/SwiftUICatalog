# SwiftUICatalog

Can you imagine how UI works from the API reference?

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

# LICENSE

Copyright (c) 2019 Kazuhiro Hayashi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
