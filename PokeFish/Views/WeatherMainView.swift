////
////  WeatherMainView.swift
////  PokeFish
////
////  Created by Maksymilian Patoń on 28/07/2022.
////
//
//import SwiftUI
//
//struct WeatherMainView: View {
//    var weather: ResponseBody
//
//    var body: some View {
//        ZStack(alignment: .leading) {
//            VStack {
//                VStack(alignment: .leading, spacing: 5) {
//                    Text(weather.name)
//                        .bold().font(.title)
//                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
//                        .fontWeight(.light)
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//
//                Spacer()
//
//                VStack {
//                    HStack {
//
//                    }
//                }
//                .frame(maxWidth: .infinity)
//            }
//            .padding()
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
//        .edgesIgnoringSafeArea(.bottom)
//        .background(Color.green)
//    }
//}
//
//struct WeatherMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeatherMainView(weather: previewWeather)
//    }
//}
