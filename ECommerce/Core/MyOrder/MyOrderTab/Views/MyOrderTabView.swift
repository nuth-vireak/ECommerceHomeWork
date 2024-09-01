import SwiftUI

struct MyOrderTabView: View {
    var body: some View {
        OrderListView(orders: OrderData.myOrders)
    }
}

#Preview {
    MyOrderTabView()
}
