//
//  Workout.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    
    let title: String
    let description: String?
    let durationInMinutes: Int
}
