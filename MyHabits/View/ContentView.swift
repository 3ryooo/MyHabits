//
//  ContentView.swift
//  MyHabits
//

import SwiftUI

struct ContentView: View {
    
    @State private var activities = Activities()
    @State private var showingSheet = false
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(activities.items) { item in
                    Text(item.name)
                }
            }
            .padding()
            .sheet(isPresented: $showingSheet) {
                AddView(activities: activities)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("追加") {
                        showingSheet = true
                    }
                }
            }
        }
    }
}

@Observable
class Activities {
    var items: [Activity] = []
}


#Preview {
    ContentView()
}
