//
//  SwiftUIView.swift
//  SwiftUICatalog
//
//  Created by Kazuhiro Hayashi on 8/6/1 R.
//  Copyright © 1 Reiwa Kazuhiro Hayashi. All rights reserved.
//

import SwiftUI

struct ViewLayoutAndPresentationList: View {
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
                Text("GroupBox")
                NavigationLink("Section", destination: FormSample())
            }
            Section(header: Text("Spacers and Dividers")) {
                NavigationLink("Spacer", destination: SpacerSample())
                NavigationLink("Divider", destination: DividerSample())
            }
            Section(header: Text("Architectural Views")) {
                NavigationLink("NavigationView", destination: NavigationViewSample())
                NavigationLink("TabView", destination: TabViewPresentationSample())
            }
            Section(header: Text("Presentation")) {
                NavigationLink("Alert", destination: AlertSample())
                NavigationLink("ActionSheet", destination: ActionSheetSample())
            }
            Section(header: Text("Conditionally Visible Items")) {
                Text("ConditionalContent")
                NavigationLink("EmptyView", destination: EmptyViewSample())
                NavigationLink("EquatableView", destination: EquatableViewSample())
            }
            Section(header: Text("Infrequently Used Views")) {
                NavigationLink("AnyView", destination: AnyViewSample())
                NavigationLink("TupleView", destination: TupleViewSample())
            }
        }.navigationBarTitle("View Layout and Presentation")
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

struct NavigationViewSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show NavigationView") {
            self.isShowing = true
        }
        .foregroundColor(.blue)
        .sheet(isPresented: $isShowing) {
            NavigationView {
                NavigationViewContentSample()
            }
        }
    }
}

struct NavigationViewContentSample: View {
    var body: some View {
        NavigationLink("push", destination:  NavigationViewSample())
    }
}

struct TabViewPresentationSample: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button("show TabView") {
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
        TabView {
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


struct EmptyViewSample: View {
    var body: some View {
        EmptyView()
    }
}

struct AnyViewSample: View {
    var body: some View {
        AnyView(Rectangle().frame(width: 50, height: 50).foregroundColor(.red))
    }
}

struct TupleViewSample: View {
    var body: some View {
        TupleView(
            (Rectangle().frame(width: 50, height: 50).foregroundColor(.red),
             Rectangle().frame(width: 50, height: 50).foregroundColor(.blue))
        )
    }
}

struct EquatableViewSample: View {
    @State var increment1: Int = 0
    @State var increment2: Int = 0

    var body: some View {
        VStack {
            HStack {
                Button("left increment") {
                    self.increment1 += 1
                }
                Button("right increment") {
                    self.increment2 += 1
                }
            }

            EquatableView(content: ComparedView(increment1: increment1, increment2: increment2))
        }
    }
}

struct ComparedView: View, Equatable {
    var increment1: Int
    var increment2: Int

    static func == (lhs: ComparedView, rhs: ComparedView) -> Bool {
        return lhs.increment1 == rhs.increment2
    }

    var body: some View {
        Text("increment1: \(increment1), increment2: \(increment2)")
    }
}

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
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutAndPresentationList()
    }
}
#endif
