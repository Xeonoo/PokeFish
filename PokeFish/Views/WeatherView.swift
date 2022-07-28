//
//  WeatherView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 27/07/2022.
//

import SwiftUI

struct WeatherView: View {
    @StateObject var locationManager = LocationManager() 
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    if let location = locationManager.location {
                        Text("Your cordinates are:\(location.longitude),\(location.latitude)")
                    } else {
                            if locationManager.isLoading {
                                LoadingView()
                            } else {
                                WeatherWelcomeView()
                                    .environmentObject(locationManager)
                            }
                    }
//                    NavigationLink(destination: MenuView()
//                        .navigationBarTitle(Text("x"))
//                        .navigationBarHidden(true))
//                    {
//                        Text("Menu")
//                        Image(systemName: "house")
//                    }
//                    .foregroundColor(.white)
//                    .frame(width: 100, height: 50)
//                    .background(Color.green)
//                    .cornerRadius(10)
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
