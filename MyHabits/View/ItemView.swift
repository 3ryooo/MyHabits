//
//  ItemView.swift
//  MyHabits
//

import SwiftUI

struct ItemView: View {
    let activity: Activity
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text(activity.name)
                } header: {
                    Text("習慣の名前")
                }
                Section {
                    Text(activity.description)
                 } header: {
                    Text("説明")
                }
            }
            
        }
    }
}

#Preview {
    let previewActivity = Activity(
        name: "test",
        description: "test"
    )
    
    ItemView(activity: previewActivity)
}
