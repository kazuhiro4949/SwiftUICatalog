//
//  SwiftUIView.swift
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

#if DEBUG
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutAndPresentationList()
    }
}
#endif
