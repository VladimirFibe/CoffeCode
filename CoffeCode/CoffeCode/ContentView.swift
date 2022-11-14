//
//  ContentView.swift
//  CoffeCode
//
//  Created by Vladimir Fibe on 13.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationsView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }.tint(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
