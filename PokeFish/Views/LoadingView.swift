//
//  LoadingView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 28/07/2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint:  .green))
            .frame(maxWidth: .infinity , maxHeight: .infinity)
    }  
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
