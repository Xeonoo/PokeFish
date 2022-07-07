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
                    VStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("PokeFish")
                        }
                        Spacer()
                        Button {
                            
                        } label: {
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

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
