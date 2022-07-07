//
//  Register.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 07/07/2022.
//

import SwiftUI

struct Register: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: menu()) {
                        Text("login")
                    }
    }
}
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
