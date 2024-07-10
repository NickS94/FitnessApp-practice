//
//  FitnessProgramDetailView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct FitnessProgramDetailView: View {
    
    let program: FitnessProgram
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Spacer()
                if let description = program.description {
                    Text(description)
                        .italic()
                }
                ForEach(program.workouts) { workout in
                    HStack {
                        Button {
                            // TODO: Workout hinzufügen
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                        }
                        Text(workout.title)
                        Spacer()
                        Text("\(workout.durationInMinutes)")
                    }
                    .padding()
                    .background(.green.opacity(0.2))
                    .clipShape(Capsule())
                }
                
                Button {
                    // TODO: Alle Workouts des Programms hinzufügen
                } label: {
                    Text("Add Everything")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle(program.title)
    }
}

#Preview {
    NavigationStack {
        FitnessProgramDetailView(program: FitnessProgram.defaults[2])
    }
}
