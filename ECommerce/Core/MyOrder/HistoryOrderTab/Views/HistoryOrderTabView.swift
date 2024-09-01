import SwiftUI

struct HistoryOrderTabView: View {
    var body: some View {
        OrderListView(orders: OrderData.historyOrders)
    }
}

#Preview {
    HistoryOrderTabView()
}
