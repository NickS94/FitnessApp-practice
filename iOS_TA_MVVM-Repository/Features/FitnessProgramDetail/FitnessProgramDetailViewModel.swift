//
//  FitnessProgramDetailViewModel.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import Foundation

class FitnessProgramDetailViewModel:ObservableObject{
    
    private var repository = Repository.sharedInstance
    
    
    @Published var isAdded = false
    @Published var allAdded = false
    
   
    func addAllPrograms(programs:FitnessProgram){
    
        programs.workouts.forEach { workout in
            repository.addWorkout(workout: workout)
        }
        allAdded = true
    }
    
    func addWorkout(workout:Workout){
        repository.addWorkout(workout: workout)
        isAdded = true

    }
    
  
    func isAlreadyAdded(workout:Workout)->Bool{
        
        repository.getWorkouts().contains { workoutItem in
            workoutItem.id == workout.id
        }
        
        
    }

    
}
