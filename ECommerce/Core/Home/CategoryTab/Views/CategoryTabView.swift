import SwiftUI

struct CategoryTabView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(Array(categories.enumerated()), id: \.offset) { index, item in
                    VStack(spacing: 10) {
                        CategoryCardView(index: index, category: item)
                    }
                    .padding([.leading, .trailing], 20)
                }
            }
        }
    }
}

#Preview {
    CategoryTabView()
}
