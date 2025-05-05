//
//  AddView.swift
//  MyHabits
//

import SwiftUI

struct AddView: View {
    @State private var title = ""
    @State private var description = ""
    @Environment(\.dismiss) var dismiss
    var activities: Activities
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("習慣の名前", text: $title)
                TextField("説明", text: $description)
            }
            .navigationTitle("習慣の追加")
            .toolbar {
                Button("保存") {
                    let item = Activity(name: title, description: description, habitCount: 1)
                    activities.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddView(activities: Activities())
}
