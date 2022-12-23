//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 김아영 on 2022/12/23.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
