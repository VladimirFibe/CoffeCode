import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                .tag(0)
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                }
                .tag(1)
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
