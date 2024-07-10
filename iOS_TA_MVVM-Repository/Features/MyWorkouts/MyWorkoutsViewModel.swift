//
//  MyWorkoutsViewModel.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import Foundation

class MyWorkoutsViewModel:ObservableObject {
    
    private var repository = Repository.sharedInstance
    
    @Published var workouts:[Workout] = []
    
    var isEmpty:Bool{
        workouts.isEmpty
    }
    
    
    func fetchWorkouts(){
        workouts = repository.getWorkouts()
    }
    
    func removeWorkout(workout:Workout){
        repository.removeWorkout(workout: workout)
        fetchWorkouts()
    }
    
    func totalWorkoutTime()-> Int{
        var duration = 0
        workouts.forEach { workout in
            duration += workout.durationInMinutes 
        }
        
        return duration
    }
    
    
}
