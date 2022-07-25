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
                        .foregroundColor(.green)
                        .frame(width: 50, height: 50)
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
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    Button {
                        do {
                        try Auth.auth().signOut()
                        } catch let signOutError as NSError {
                        print("Error signing out: %@", signOutError)
                        }
                    } label: {
                        Text("Out")
                    }
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
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
