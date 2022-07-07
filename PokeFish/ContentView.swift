//
//  ContentView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 06/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination: menu()) {
                            Text("login")
                        }
                    NavigationLink(destination: Register()) {
                            Text("register")
                        }
                }
            }
        }
    }


//        About fish
     /*   ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Date")
                    Spacer()
                    Text("Lenght")
                    Spacer()
                    Text("Weight")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("25 maj 2000")
                    Spacer()
                    Text("2.5m")
                    Spacer()
                    Text("10Kg")
                    Spacer()
                }
                .padding(.top, 5.0)
                Spacer()
            }
        }
        
        
        
        
        
        
        
        */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

