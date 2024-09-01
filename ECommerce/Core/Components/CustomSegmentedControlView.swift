import SwiftUI

struct CustomSegmentedControlView<Content: View>: View {
    @State private var selectedSegment = 0 // State to track selected segment
    
    let titles: [String]
    let views: [Content]
    
    var body: some View {
        VStack {
            // Custom Segmented Control
            HStack {
                ForEach(0..<titles.count, id: \.self) { index in
                    Button(action: {
                        selectedSegment = index
                    }) {
                        Text(titles[index])
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(selectedSegment == index ? .black : .gray)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .padding(.top, 8)
            
            // Segment Indicator
            GeometryReader { geometry in
                let segmentWidth = geometry.size.width / CGFloat(titles.count)
                let indicatorWidth: CGFloat = 60
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: indicatorWidth, height: 2)
                    .offset(x: (segmentWidth * CGFloat(selectedSegment)) + (segmentWidth - indicatorWidth) / 2)
                    .animation(.easeInOut, value: selectedSegment)
            }
            .frame(height: 2)
            .background(Color.white)
            
            // Content View with Swiping
            TabView(selection: $selectedSegment) {
                ForEach(0..<views.count, id: \.self) { index in
                    views[index]
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

#Preview {
    CustomSegmentedControlView(
        titles: ["Home", "Category"],
        views: [AnyView(HomeTabView()), AnyView(CategoryTabView())]
    )
}
