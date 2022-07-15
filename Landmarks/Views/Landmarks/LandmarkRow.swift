//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-07-03.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .fontWeight(.bold)
                #if !os(watchOS)
                Text(landmark.park)
                    .font(.caption)
                    .foregroundColor(.secondary)
                #endif
            }
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        LandmarkRow(landmark: landmarks[1])
    }
}
