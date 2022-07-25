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
        ZStack {
            Color.green
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.14))
            Circle()
                .scale(1.35)
                .foregroundColor(.white.opacity(0.09))
            Circle()
                .scale(1)
                .foregroundColor(.white)
        VStack {
            Text("Add new fish")
                .font(.largeTitle)
                .bold()
                .padding()
            TextField("New Fish", text: $newFish)
                .padding(.leading, 115.0)
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05 ))
                .cornerRadius(10)
                .padding()
            Button {
                 dataManager.addFish(fishName: newFish )
            } label: {
                Text("Add")
                    .bold()
                    .controlSize(.large)
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.green)
            .cornerRadius(10)
        }
        .padding()
    }
}
}
struct NewFishView_Previews: PreviewProvider {
    static var previews: some View {
        NewFishView()
    }
}
