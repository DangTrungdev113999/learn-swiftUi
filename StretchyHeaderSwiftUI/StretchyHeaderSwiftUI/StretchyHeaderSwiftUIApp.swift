//
//  StretchyHeaderSwiftUIApp.swift
//  StretchyHeaderSwiftUI
//
//  Created by Trung Dang on 04/10/2021.
//

import SwiftUI

@main
struct StretchyHeaderSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
