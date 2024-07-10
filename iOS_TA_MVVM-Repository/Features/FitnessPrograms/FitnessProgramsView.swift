//
//  FitnessProgramsView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct FitnessProgramsView: View {
    
    @StateObject var programsViewModel = FitnessProgramsViewModel()
    @StateObject var detailsViewModel = FitnessProgramDetailViewModel()
    
    
    var body: some View {
        NavigationStack {
            // TODO: Verwende hier die Daten aus dem ViewModel
            List(programsViewModel.fitnessPrograms) { program in
                NavigationLink {
                    FitnessProgramDetailView(detailsViewModel: detailsViewModel, program: program)
                } label: {
                    Text(program.title)
                }
            }
            .navigationTitle("Fitness Programs")
        }
    }
}

#Preview {
    FitnessProgramsView()
}
