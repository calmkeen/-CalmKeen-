//
//  TodolistSwiftUIApp.swift
//  TodolistSwiftUI
//
//  Created by calmkeen on 1/21/24.
//

import SwiftUI

@main
struct TodolistSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
