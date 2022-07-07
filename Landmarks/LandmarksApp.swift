//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-06-20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
