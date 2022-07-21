//
//  PokeFishApp.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 06/07/2022.
//

import SwiftUI
import Firebase

@main
struct PokeFishApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure() 
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
        }
    }
}
// poprawic logout
