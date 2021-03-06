//
//  ListView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 20/07/2022.
//

import SwiftUI
import Firebase


struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    var body: some View {
        
        NavigationView {
            VStack {
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
                HStack {
                    NavigationLink(destination: ContentView()
                        .navigationBarTitle(Text("x"))
                        .navigationBarHidden(true))
                    {
                        Text("Logut")
                        Image(systemName: "xmark")
                    }
                    Button {
                        do {
                        try Auth.auth().signOut()
                        } catch let signOutError as NSError {
                        print("Error signing out: %@", signOutError)
                        }
                    } label: {
                        Text("Out")
                    }
                }
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
