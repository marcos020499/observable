//
//  ObservableApp.swift
//  Observable
//
//  Created by sw on 29/01/24.
//

import SwiftUI

@main
struct ObservableApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
