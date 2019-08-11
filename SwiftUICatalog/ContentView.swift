//  SwiftUICatalog
//
//  Copyright (c) 2019 Kazuhiro Hayashi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ComponentList()
            }
            .tabItem {
                Image(systemName: "rectangle.grid.1x2.fill")
                Text("Component")
            }.tag(0)

            
            NavigationView {
                Text("View Modification")
                    .navigationBarTitle("View Modification")
            }.tabItem {
                Image(systemName: "wrench.fill")
                Text("View Modification")
            }.tag(1)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ComponentList: View {
    var body: some View {
            List {
                Section(header: Text("User Interface")) {
                    NavigationLink("Views and Controls", destination: ViewAndControls())
                    NavigationLink("View Layout and Presentation", destination: ViewLayoutAndPresentationList())
                    NavigationLink("Drawing and Animation", destination: DrawingAndAnimation())
                    Text("Framework Integration")
                }
                Section(header: Text("Data and Events")) {
                    Text("State and Data Flow")
                    NavigationLink("Gestures", destination: GestureSection())
                }
                Section(header: Text("Preview in Xcode")) {
                    Text("Previews")
                }
            }.navigationBarTitle("Component")
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
