//
//  ContentView.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-06-20.
//

import SwiftUI

enum Tab {
    case featured
    case list
}

struct ContentView: View {
    @State private var tab: Tab = .featured
    
    var body: some View {
        TabView(selection: $tab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
