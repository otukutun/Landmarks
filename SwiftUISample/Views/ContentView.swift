//
//  ContentView.swift
//  SwiftUISample
//
//  Created by otukutun on 2023/12/01.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem { Label("Feature", systemImage: "star") }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem { Label("List", systemImage: "list.bullet") }
                .tag(Tab.list)
        }

    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
