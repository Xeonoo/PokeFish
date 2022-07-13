//
//  menu.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 07/07/2022.
//

import SwiftUI

struct menu: View {
    var body: some View {
        //        Menu
                ZStack {
                    NavigationView{
                    VStack {
                        Spacer()
                        NavigationLink(destination: PokeFish()) {
                                Text("Poke Fish")
                             }
                        Spacer()
                        NavigationLink(destination: PokeFish()) {
                                Text("Options")
                            }
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Logut")
                        }
                        Spacer()
                        }
                    }
                }
    }
}

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
