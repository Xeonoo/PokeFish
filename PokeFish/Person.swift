//
//  Person.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 21/07/2022.
//

import Foundation

struct Person: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

extension Person {
    static let examples: [Person] = [
        .init(name: "Maksymilian"),
        .init(name: "Kamil")
    ]
}
