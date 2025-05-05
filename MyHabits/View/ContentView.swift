//
//  ContentView.swift
//  MyHabits
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false
    @State private var activities = Activities()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(activities.items) { item in
                    Text(item.name)
                }
            }
            .padding()
            .sheet(isPresented: $showingSheet) {
                addView()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("add") {
                        showingSheet = true
                    }
                }
            }
        }
    }
}

struct Activity: Identifiable {
    let id = UUID()
    let name: String
}

class Activities {
    let items: [Activity] = []
}


struct addView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

#Preview {
    ContentView()
}
