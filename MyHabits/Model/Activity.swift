//
//  Activity.swift
//  MyHabits
//

import Foundation

struct Activity: Identifiable, Equatable, Codable {
    var id = UUID()
    let name: String
    let description: String
    var habitCount: Int
}
