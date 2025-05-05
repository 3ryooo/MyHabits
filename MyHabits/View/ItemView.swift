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
                Section {
                    Text("合計：\(activity.habitCount)回")
                } header: {
                    Text("習慣の回数")
                }
                
            }
            .toolbar {
                Button("1回追加") {
                    //
                }
            }
        }
        
    }
}

#Preview {
    let previewActivity = Activity(
        name: "test",
        description: "test",
        habitCount: 1
    )
    
    ItemView(activity: previewActivity)
}
