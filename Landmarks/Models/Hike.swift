//
//  Hike.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-07-07.
//

import Foundation

// A codable object can convert itself into and out of an external representation.
// A codable object has properties that match the keys in the corresponding data file.
struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]

    static var formatter = LengthFormatter()

    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }

    struct Observation: Codable, Hashable {
        var distanceFromStart: Double

        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
