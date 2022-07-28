//
//  WeatherMainView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 28/07/2022.
//

import SwiftUI

struct WeatherMainView: View {
    var weather: ResponseBody
     
    var body: some View {
        ZStack(alignment: .leading) {
            
        }
    }
}

struct WeatherMainView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherMainView(weather: previewWeather)
    }
}
