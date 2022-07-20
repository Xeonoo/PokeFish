//
//  NewFishView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 20/07/2022.
//

import SwiftUI

struct NewFishView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newFish = ""
    
    var body: some View {
        VStack {
            TextField("Fish", text: $newFish)
            Button {
                 dataManager.addFish(fishName: newFish )
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

struct NewFishView_Previews: PreviewProvider {
    static var previews: some View {
        NewFishView()
    }
}
