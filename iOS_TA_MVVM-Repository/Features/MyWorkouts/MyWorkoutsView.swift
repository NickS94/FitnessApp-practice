//
//  MyWorkoutsView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct MyWorkoutsView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    // TODO: Daten aus dem ViewModel anzeigen
                    ForEach(FitnessProgram.defaults.first!.workouts) { workout in
                        HStack {
                            Button {
                                // TODO: Workout "abschließen"
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
                        Text("Total time:")
                        // TODO: Gesamtdauer anzeigen
                        Text("45 minutes")
                    }
                }
                .padding()
            }
            .navigationTitle("My Workouts")
        }
    }
}

#Preview {
    MyWorkoutsView()
}
