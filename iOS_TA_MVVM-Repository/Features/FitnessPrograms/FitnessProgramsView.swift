//
//  FitnessProgramsView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct FitnessProgramsView: View {
    
    var body: some View {
        NavigationStack {
            // TODO: Verwende hier die Daten aus dem ViewModel
            List(FitnessProgram.defaults) { program in
                NavigationLink {
                    FitnessProgramDetailView(program: program)
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
