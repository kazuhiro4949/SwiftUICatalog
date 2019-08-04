//
//  ContentView.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/4/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabbedView {
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
                NavigationLink("View Layout and Presentation", destination: LayoutList())
                NavigationLink("Views and Controls", destination: LayoutList())
                NavigationLink("Drawing and Animation", destination: LayoutList())
                NavigationLink("Gestures", destination: LayoutList())
            }.navigationBarTitle("Component")
    }
}

struct LayoutList: View {
    var body: some View {
        List {
            Section(header: Text("Stacks")) {
                NavigationLink("HStack", destination: HStackSample())
                NavigationLink("VStack", destination: VStackSample())
                NavigationLink("ZStack", destination: ZStackSample())
            }
            Section(header: Text("Lists and Scroll Views")) {
                NavigationLink("List", destination: ListSample())
                NavigationLink("ScrollView - Vertical", destination: ScrollViewVerticalSample())
                NavigationLink("ScrollView - Horizontal", destination: ScrollViewHorizontalSample())
            }
            Section(header: Text("Container Views")) {
                NavigationLink("Form", destination: FormSample())
                NavigationLink("Group", destination: GroupSample())
                NavigationLink("GroupBox", destination: ScrollViewHorizontalSample())
                NavigationLink("Section", destination: FormSample())
            }
            Section(header: Text("Spacers and Dividers")) {
                NavigationLink("Spacer", destination: SpacerSample())
                NavigationLink("Divider", destination: DividerSample())
            }
            Section(header: Text("Architectural Views")) {
                NavigationLink("NavigationView", destination: TabViewPresentationSample())
//                NavigationLink("TabView", destination: DividerSample())
            }
            Section(header: Text("Presentation")) {
                NavigationLink("Alert", destination: AlertSample())
                NavigationLink("ActionSheet", destination: ActionSheetSample())
            }
        }.navigationBarTitle("Layout")
    }
}

struct HStackSample: View {
    var body: some View {
        HStack {
            Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("HStack")
    }
}

struct VStackSample: View {
    var body: some View {
        VStack {
            Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("VStack")
    }
}

struct ZStackSample: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 150, height: 150).foregroundColor(.red)
            Rectangle().frame(width: 100, height: 100).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("ZStack")
    }
}

struct ListSample: View {
    var body: some View {
        List {
            ForEach((0..<100), id: \.self) {
                Text("\($0)")
            }
        }.navigationBarTitle("List")
    }
}

struct ScrollViewVerticalSample: View {
    var body: some View {
        ScrollView {
            Rectangle().frame(width: 300, height: 300).foregroundColor(.red)
            Rectangle().frame(width: 300, height: 300).foregroundColor(.blue)
            Rectangle().frame(width: 300, height: 300).foregroundColor(.green)
        }.navigationBarTitle("ScrollView - Vertical")
    }
}

struct ScrollViewHorizontalSample: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Rectangle().frame(width: 300, height: 300).foregroundColor(.red)
                Rectangle().frame(width: 300, height: 300).foregroundColor(.blue)
                Rectangle().frame(width: 300, height: 300).foregroundColor(.green)
            }
        }.navigationBarTitle("ScrollView - Horizontal")
    }
}

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

struct GroupSample: View {
    var body: some View {
        Group {
            Group {
                Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
                Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
                Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
            }
            Group {
                Circle().frame(width: 50, height: 50).foregroundColor(.red)
                Circle().frame(width: 50, height: 50).foregroundColor(.blue)
                Circle().frame(width: 50, height: 50).foregroundColor(.green)
            }
        }.navigationBarTitle("Group")
    }
}

struct GroupBoxSample: View {
    var body: some View {
        Text("aaa")
    }
}

struct SpacerSample: View {
    var body: some View {
        VStack {
            Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
            
            Spacer()
            
            Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("Spacer")
    }
}

struct DividerSample: View {
    var body: some View {
        VStack {
            Rectangle().frame(width: 50, height: 50).foregroundColor(.red)
            
            Divider()
            
            Rectangle().frame(width: 50, height: 50).foregroundColor(.blue)
            Rectangle().frame(width: 50, height: 50).foregroundColor(.green)
        }.navigationBarTitle("Spacer")
    }
}

struct TabViewPresentationSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show alert") {
            self.isShowing = true
        }
        .foregroundColor(.blue)
        .sheet(isPresented: $isShowing) {
            TabViewSample()
        }
    }
}

struct TabViewSample: View {
    var body: some View {
        TabbedView {
            Text("View 1")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Tab1")
                }.tag(0)
            
            Text("View 2")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Tab2")
                }.tag(1)
        }
    }
}

//struct GroupBox: View {
//    var body: some View {
//
//    }
//}

//struct HSplitViewSample: View {
//    var body: some View {
//
//    }
//}

//struct VSplitViewSample: View {
//    var body: some View {
//
//    }
//}

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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
