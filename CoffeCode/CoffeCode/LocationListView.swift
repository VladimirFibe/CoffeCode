import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    HStack {
                        AvatarView(image: "person.circle", width: 80)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("AC Kitchen & Lounge")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            HStack {
                                ForEach(0 ..< 5) { item in
                                    AvatarView(image: "person.circle", width: 35)
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
        Image(systemName: image)
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


