//
//  ListView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 20/07/2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var DataManager: DataManager
    
    var body: some View {
        NavigationView {
            List(DataManager.fishes, id: \.id ) { fish in
                Text(fish.name)
            }
            .navigationTitle("Fishes")
            .navigationBarItems(trailing: Button(action: {
                                //add
                
            },
            label:{
            Image(systemName: "plus")
            }))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
