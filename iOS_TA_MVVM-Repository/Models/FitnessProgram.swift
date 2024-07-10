//
//  FitnessProgram.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import Foundation

struct FitnessProgram: Identifiable {
    let id = UUID()
    
    let title: String
    let description: String?
    var workouts: [Workout]
    
    static let defaults = [
        FitnessProgram(
            title: "Light Workout",
            description: "A light workout before work",
            workouts: [
                Workout(
                    title: "Stretching",
                    description: "Stretch all those limbs!",
                    durationInMinutes: 5
                ),
                Workout(
                    title: "Jogging",
                    description: nil,
                    durationInMinutes: 10
                ),
                Workout(
                    title: "Stretching",
                    description: "Stretch all those limbs!",
                    durationInMinutes: 5
                ),
            ]
        ),
        FitnessProgram(
            title: "Morning Yoga",
            description: "Start your day with a refreshing yoga session",
            workouts: [
                Workout(
                    title: "Sun Salutation",
                    description: "Greet the day with energy!",
                    durationInMinutes: 15
                ),
                Workout(
                    title: "Warrior Pose",
                    description: "Channel your inner strength",
                    durationInMinutes: 20
                ),
                Workout(
                    title: "Tree Pose",
                    description: "Find your balance and focus",
                    durationInMinutes: 10
                ),
            ]
        ),
        FitnessProgram(
            title: "Cardio Blast",
            description: "Get your heart pumping with high-intensity cardio exercises",
            workouts: [
                Workout(
                    title: "Jumping Jacks",
                    description: "A classic cardio move",
                    durationInMinutes: 10
                ),
                Workout(
                    title: "Burpees",
                    description: "A full-body exercise that gets results",
                    durationInMinutes: 15
                ),
                Workout(
                    title: "High Knees",
                    description: "Boost your heart rate and burn calories",
                    durationInMinutes: 10
                ),
                Workout(
                    title: "Mountain Climbers",
                    description: "Work your core and increase agility",
                    durationInMinutes: 15
                ),
            ]
        ),
        FitnessProgram(
            title: "Strength Training",
            description: "Build muscle and increase strength with targeted exercises",
            workouts: [
                Workout(
                    title: "Push-ups",
                    description: "Strengthen your chest, arms, and core",
                    durationInMinutes: 10
                ),
                Workout(
                    title: "Squats",
                    description: "Work your lower body and improve mobility",
                    durationInMinutes: 15
                ),
                Workout(
                    title: "Plank",
                    description: "Engage your core and stabilize your body",
                    durationInMinutes: 10
                ),
                Workout(
                    title: "Deadlifts",
                    description: "Build lower body strength and power",
                    durationInMinutes: 20
                ),
                Workout(
                    title: "Pull-ups",
                    description: "Develop upper body strength and muscle definition",
                    durationInMinutes: 15
                ),
            ]
        )
    ]
}
