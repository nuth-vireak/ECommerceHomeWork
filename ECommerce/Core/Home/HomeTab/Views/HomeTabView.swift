import SwiftUI

struct HomeTabView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ImageSliderView()
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text("New Arrivals")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button(action: {
                            // See All action
                        }) {
                            Text("See All")
                                .font(.system(size: 14, weight: .medium, design: .rounded))
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                        ForEach(ProductData.products) { product in
                            ProductView(product: product, isFavorite: false)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeTabView()
}
