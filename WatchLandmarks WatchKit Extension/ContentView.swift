//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Jiaming Guo on 2022-07-11.
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
