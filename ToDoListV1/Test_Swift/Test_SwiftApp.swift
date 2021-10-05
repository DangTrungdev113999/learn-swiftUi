//
//  Test_SwiftApp.swift
//  Test_Swift
//
//  Created by Trung Dang on 04/10/2021.
//

import SwiftUI

@main
struct Test_SwiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
