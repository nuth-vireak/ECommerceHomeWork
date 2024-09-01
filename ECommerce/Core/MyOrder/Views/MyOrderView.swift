import SwiftUI

struct MyOrderView: View {
    var body: some View {
        CustomSegmentedControlView(titles: ["My Order", "History"],
                                   views: [
                                    AnyView(MyOrderTabView()),
                                    AnyView(HistoryOrderTabView())
                                   ])
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Image(systemName: "handbag")
            }
        }
    }
}

struct OrderListView: View {
    let orders: [Order]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(orders) { order in
                    OrderCardView(order: order)
                }
            }
            .padding()
        }
    }
}

#Preview {
    MyOrderView()
}
