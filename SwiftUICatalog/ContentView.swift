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
                    NavigationLink("Gestures", destination: Gesture())
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
