//
//  FitnessProgramsViewModel.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import Foundation

class FitnessProgramsViewModel:ObservableObject {
    
    @Published var fitnessPrograms:[FitnessProgram] = []
    
    private var repository = Repository.sharedInstance
    
    
    init() {
        fetchFitnessPrograms()
    }
    
    func fetchFitnessPrograms(){
        fitnessPrograms = repository.getFitnessPrograms()
    }
}
