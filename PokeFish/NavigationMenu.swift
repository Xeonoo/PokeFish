//
//  NavigationMenu.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 21/07/2022.
//
import SwiftUI

struct NavigationMenu: View {
    @State private var path = [String()]
    
    var body: some View {
        NavigationView(path: $path) {
            List {
                NavigationLink("test", value: "dziala")
                
                Button("Navigate to xyz") {
                    path.append("xz")
                }
            }
            .navigationDestination(for: String.self) {
                string in
                VStack {
                    Text(string)
                    
                }
            }
        }
    }
}

struct NavigationMenu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenu()
    }
}
