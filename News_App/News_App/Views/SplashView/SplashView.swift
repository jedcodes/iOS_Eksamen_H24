//
//  SplashView.swift
//  News_App
//
//  Created by Jack Delamou on 26/11/2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color(Theme.primary)
                .edgesIgnoringSafeArea(.all)
            Image("dailyPlanet")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350)
        }
    }
}

#Preview {
    SplashView()
}
