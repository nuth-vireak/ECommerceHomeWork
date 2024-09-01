import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            CustomHeaderView()
            CustomSegmentedControlView(titles: ["Home", "Category"],
                                       views: [
                                        AnyView(HomeTabView()),
                                        AnyView(CategoryTabView())
                                       ])
        }
    }
}

#Preview {
    HomeView()
}
