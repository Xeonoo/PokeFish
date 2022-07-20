//
//  ListView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 20/07/2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            List(dataManager.fishes, id: \.id ) { fish in
                Text(fish.name)
            }
            .navigationTitle("Fishes")
            .navigationBarItems(trailing: Button(action: {
                showPopup.toggle()
                
            },
            label:{
            Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup) {
                    NewFishView()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(DataManager())
    }
}
