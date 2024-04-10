//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Liko Setiawan on 10/04/24.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
        
    }
}
