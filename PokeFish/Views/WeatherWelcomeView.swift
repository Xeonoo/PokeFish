//
//  WeatherWelcomeView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 28/07/2022.
//

import SwiftUI
import CoreLocationUI
struct WeatherWelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack {
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .foregroundColor(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}

struct WeatherWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWelcomeView()
    }
}
