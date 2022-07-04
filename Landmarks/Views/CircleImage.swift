//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-07-03.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7.0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
