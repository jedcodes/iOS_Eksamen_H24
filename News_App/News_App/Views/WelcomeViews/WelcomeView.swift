//
//  WelcomeView.swift
//  News_App
//
//  Created by Jack Delamou on 22/11/2024.
//

import SwiftUI

struct WelcomeView: View {
    let action: () -> Void
    var body: some View {
        NavigationStack {
            ZStack {
                Theme.primary.ignoresSafeArea()
                VStack{
                    Text("Daily News Planet")
                        .font(.system(size: 32, weight: .bold, design: .default))
                    Spacer()
                    Image("newsWelcome")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Text("Read articles from around the world and stay up to date with the latest news")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 19, weight: .regular, design: .default))
                        .padding(.bottom, 20)
          
                    Button {
                        action()
                    } label: {
                        Text("Kom i gang")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .background(Theme.secondary)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    WelcomeView(action: {} )
}
