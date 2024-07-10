//
//  MyWorkoutsView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct MyWorkoutsView: View {
    
    
    @StateObject var myWorkoutsViewModel = MyWorkoutsViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    // TODO: Daten aus dem ViewModel anzeigen
                    ForEach(myWorkoutsViewModel.workouts) { workout in
                        HStack {
                            Button {
                                myWorkoutsViewModel.removeWorkout(workout: workout)
                            } label: {
                                Image(systemName: "checkmark.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                            }
                            Text(workout.title)
                            Spacer()
                            Text("\(workout.durationInMinutes)")
                        }
                        .padding()
                        .background(.orange.opacity(0.2))
                        .clipShape(Capsule())
                    }
                    
                    VStack {
                        if !myWorkoutsViewModel.isEmpty{
                            Text("Total time:")
                            Text(String(myWorkoutsViewModel.totalWorkoutTime()))
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("My Workouts")
            .onAppear{
                myWorkoutsViewModel.fetchWorkouts()
            }
 
        }
    }
}

#Preview {
    MyWorkoutsView()
}
