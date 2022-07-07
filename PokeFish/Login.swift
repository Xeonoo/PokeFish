//
//  Login.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 07/07/2022.
//

import SwiftUI

struct Login: View {
    var body: some View {
        //        Login
                ZStack {
                    // Image("background").ignoresSafeArea()
                    VStack {
                    Text("Poke Fishing")
                        .padding()
                        .background(Color.blue)
                    Button {
                            
                    } label: {
                    Text("Login")
                        .padding()
                        }
                        
                        NavigationLink(destination: menu()) {
                                Text("login")

                    }
                }
    }
    
    }
}
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
