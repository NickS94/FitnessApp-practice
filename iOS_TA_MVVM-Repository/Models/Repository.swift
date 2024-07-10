//
//  Repository.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import Foundation

class Repository {
    
    static let sharedInstance = Repository()
    
     private var workoutsList:[Workout] = []
    
    
    func getFitnessPrograms()->[FitnessProgram]{
        return FitnessProgram.defaults
    }
    
    
    func getWorkouts()-> [Workout]{
        
        return workoutsList
    }
    
    
    func addWorkout(workout:Workout){
        
        workoutsList.append(workout)
    }
    
    
    func removeWorkout(workout:Workout){
        
        workoutsList.removeAll(where:{$0.id == workout.id})
    }
    
    
}
