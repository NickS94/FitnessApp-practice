//
//  FitnessProgramDetailView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct FitnessProgramDetailView: View {
    
    @ObservedObject var detailsViewModel : FitnessProgramDetailViewModel
    @State var alreadyExist = false
    
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
                            if detailsViewModel.isAlreadyAdded(workout: workout){
                                alreadyExist = true
                            }else{
                                detailsViewModel.addWorkout(workout: workout)
                            }
                            
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
                    detailsViewModel.addAllPrograms(programs: program)
                } label: {
                    Text("Add Everything")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
        }
        .alert("Workout is added!", isPresented:$detailsViewModel.isAdded , actions: {
        })
        .alert("All workouts added", isPresented: $detailsViewModel.allAdded, actions: {
        })
        .alert("Is alredy exist", isPresented: $alreadyExist, actions: {
        })
        .navigationTitle(program.title)
       
    }
}

#Preview {
    NavigationStack {
        FitnessProgramDetailView(detailsViewModel: FitnessProgramDetailViewModel(), program: FitnessProgram.defaults[2])
    }
}
