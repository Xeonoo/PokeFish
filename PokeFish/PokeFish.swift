//
//  PokeFish.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 07/07/2022.
//

import SwiftUI

struct PokeFish: View {
    var body: some View {
        //        PokeFish
                ZStack {
                    VStack {
                        HStack {
                            Spacer()
                            Text("Fishes")
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("Add")
                            }


                        }
                        VStack {
                            Spacer()
                            Button {
                                
                            } label: {
                                Image("1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            Button {
                                
                            } label: {
                                Image("1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            Button {
                                
                            } label: {
                                Image("1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            Spacer()
                        }
                        .padding(.top, 5.0)
                        Spacer()
                    }
                }
    }
}

struct PokeFish_Previews: PreviewProvider {
    static var previews: some View {
        PokeFish()
    }
}
