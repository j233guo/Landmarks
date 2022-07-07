//
//  ContentView.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-06-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}