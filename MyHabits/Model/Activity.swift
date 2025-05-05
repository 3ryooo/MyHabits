//
//  Activity.swift
//  MyHabits
//

import Foundation

struct Activity: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let description: String
    var habitCount: Int
}
