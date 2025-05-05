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
                    NavigationLink("\(item.name)") {
                        ItemView(activity: item, activities: activities)
                    }
                    
                }
                .onDelete(perform: removeItems)
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
                ToolbarItem(placement: .topBarTrailing) {
                    Button("debug") {
                        print(activities.items)
                    }
                }
                
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
}



@Observable
class Activities {
    var items = [Activity]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([Activity].self, from: savedItems) {
                items = decodedItems
            }
            
        }
    }
}


#Preview {
    ContentView()
}
