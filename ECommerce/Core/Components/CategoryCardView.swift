import SwiftUI

struct CategoryCardView: View {
    let index: Int
    let category: Category
    
    var body: some View {
        ZStack(alignment: index % 2 == 0 ? .topLeading : .topTrailing) {
            Image(category.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 140)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: index % 2 == 0 ? .leading : .trailing, spacing: 5) {
                Text(category.name)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                
                Text(category.productCount)
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 25)
            .padding(.top, 50)
        }
    }
}
