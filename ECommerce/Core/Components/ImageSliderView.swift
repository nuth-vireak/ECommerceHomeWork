import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    private let images = ["bannerPromotion1", "bannerPromotion2", "bannerPromotion3"]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<images.count, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFill()
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .frame(height: 200)
        .cornerRadius(10)
        .padding(.horizontal)
        .padding([.top, .bottom], 10)
        .onAppear {
            startAutoSlide()
        }
    }
    
    private func startAutoSlide() {
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % images.count
            }
        }
    }
}
#Preview {
    ImageSliderView()
}
