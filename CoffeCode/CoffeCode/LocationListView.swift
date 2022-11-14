import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 5) { item in
                    NavigationLink(destination: LocationDetailView()) {
                        HStack {
                            AvatarView(image: "default-square-asset", width: 80)
                            VStack(alignment: .leading, spacing: 8) {
                                Text("AC Kitchen & Lounge")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.75)
                                HStack {
                                    ForEach(0 ..< 5) { item in
                                        AvatarView(image: "default-avatar", width: 35)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }
    }
}

struct AvatarView: View {
    let image: String
    let width: CGFloat
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: width, height: width)
            .clipShape(Circle())
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}


