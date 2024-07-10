//
//  ContentView.swift
//  iOS_TA_MVVM-Repository
//
//  Created by Leonid Riedel on 28.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FitnessProgramsView()
                .tabItem {
                    Label("Programs", systemImage: "figure.run.circle")
                }
            
            MyWorkoutsView()
                .tabItem {
                    Label("My Workouts", systemImage: "dumbbell.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
