//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-07-11.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            // The badge’s drawing logic produces a result that depends on the size of the frame in which it renders.
            // render the badge in 300 and then scale it to 100 to ensure the desired appearance
            Badge()
                .frame(width: 300.0, height: 300.0)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100.0, height: 100.0)
            // The badge is just a graphic, so the text in HikeBadge along with the accessibilityLabel modifier make the meaning of the badge clearer to other users.
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
