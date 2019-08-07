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

#if DEBUG
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutAndPresentationList()
    }
}
#endif
