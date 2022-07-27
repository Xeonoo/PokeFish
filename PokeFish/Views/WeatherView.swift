//
//  WeatherView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 27/07/2022.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: MenuView()
                        .navigationBarTitle(Text("x"))
                        .navigationBarHidden(true))
                    {
                        Text("Menu")
                        Image(systemName: "house")
                    }
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                }
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
