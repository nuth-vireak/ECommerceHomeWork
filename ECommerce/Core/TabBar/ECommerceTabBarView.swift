import SwiftUI

struct ECommerceTabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {

            NavigationView {
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)
            
            NavigationView {
                MyOrderView()
                    .navigationTitle("My Order")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("My Order", systemImage: "truck.box.fill")
            }
            .tag(1)

            NavigationView {
                FavoriteView()
                    .navigationTitle("My Favorite")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("Favorite", systemImage: "heart")
            }
            .tag(2)

            NavigationView {
                ProfileView()
            }
            .tabItem {
                Label("My Profile", systemImage: "person")
            }
            .tag(3)
        }
    }
}

#Preview {
    ECommerceTabBarView()
}
