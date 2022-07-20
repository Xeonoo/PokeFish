//
//  DataManager.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 20/07/2022.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var fishes: [Fish] = []
    
    init() {
        fetchFishes()
    }
    
    func fetchFishes() {
        fishes.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Fishes")
        ref.getDocuments {
            snapshot, error in guard  error == nil else {
                print(error!.localizedDescription )
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    
                    let fish = Fish(id: id, name: name)
                    self.fishes.append(fish)
                }
            }
        }
    }
}
