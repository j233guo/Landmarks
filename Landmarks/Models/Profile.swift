//
//  Profile.swift
//  Landmarks
//
//  Created by Jiaming Guo on 2022-07-10.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto: Season = .winter
    var goalDate = Date()
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌸"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "❄️"
        var id: String { rawValue }
    }
    
    static let `default` = Profile(username: "User")
}
