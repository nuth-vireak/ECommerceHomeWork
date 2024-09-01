import SwiftUI

struct FavoriteView: View {
    var body: some View {
        VStack(spacing: 20) {
            FilterBarView()
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                    ForEach(ProductData.products) { product in
                        ProductView(product: product, isFavorite: true)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct FilterBarView: View {
    @State private var selectedFilter = "Latest"
    let filters = ["All", "Latest", "Most Popular", "Last Week"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(filters, id: \.self) { filter in
                    Button(action: {
                        selectedFilter = filter
                    }) {
                        Text(filter)
                            .font(.system(size: 14, weight: .medium, design: .rounded))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 20)
                            .background(selectedFilter == filter ? Color.blue : Color.clear)
                            .foregroundColor(selectedFilter == filter ? Color.white : Color.gray)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
        }
    }
}

#Preview {
    FavoriteView()
}
