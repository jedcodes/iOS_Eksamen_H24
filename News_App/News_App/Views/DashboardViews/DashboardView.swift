//
//  DashboardView.swift
//  News_App
//
//  Created by Jack Delamou on 26/11/2024.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView {
            ArticleViewScreen()
                .tabItem {
                    Image(systemName: "book.pages.fill")
                        .renderingMode(.original)
                    Text("Articles")
                        .font(.system(size: 20))
                }
            SearchViewScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            SettingViewScreen()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
        .accentColor(Theme.primary)
    }
}

#Preview {
    DashboardView()
}
