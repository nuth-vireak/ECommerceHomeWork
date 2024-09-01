import SwiftUI

struct ProductView: View {
    let product: Product
    @State private var isFavorite = false
    
    init(product: Product, isFavorite: Bool = false) {
        self.product = product
        _isFavorite = State(initialValue: isFavorite)
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(product.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 175, height: 185)
                .cornerRadius(10)
                .overlay(
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(isFavorite ? .red : .white)
                            .padding(8)
                            .background(Color.gray.opacity(0.5))
                            .clipShape(Circle())
                        
                            .padding([.top, .trailing], 10)
                    }
                    , alignment: .topTrailing
                )
            
            VStack(spacing: 3) {
                Text(product.name)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                
                Text(product.brand)
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                
                Text(product.price)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
            }
            
            Spacer()
        }
    }
}
