import Foundation

struct Order: Identifiable {
    let id = UUID()
    let productName: String
    let color: String
    let quantity: Int
    let price: Double
    let status: OrderStatus
    let imageName: String
}

enum OrderStatus {
    case onProgress
    case completed
}

struct OrderData {
    static let myOrders: [Order] = [
        Order(productName: "Bix Bag Limited Edition 229", color: "white", quantity: 20, price: 100.00, status: .onProgress, imageName: "bag"),
        Order(productName: "Watch Limited Edition 2024", color: "black", quantity: 1, price: 10.00, status: .onProgress, imageName: "bag3"),
    ]
    
    static let historyOrders: [Order] = [
        Order(productName: "Shoe Limited Edition 112", color: "blue", quantity: 2, price: 200.00, status: .completed, imageName: "bag"),
        Order(productName: "Hat Limited Edition 303", color: "red", quantity: 3, price: 50.00, status: .completed, imageName: "bag3"),
    ]
}
