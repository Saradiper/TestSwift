//
//  MagicApp.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import SwiftUI

@main
struct MagicApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
