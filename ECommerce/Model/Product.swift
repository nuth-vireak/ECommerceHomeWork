import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let brand: String
    let price: String
    let imageName: String
}

struct ProductData {
    static let products = [
        Product(name: "The Mirac Jiz", brand: "Lisa Robber", price: "$195.00", imageName: "bag"),
        Product(name: "Galaxy S21", brand: "Samsung", price: "$799", imageName: "bag3"),
        Product(name: "Pixel 5", brand: "Google", price: "$699", imageName: "Dior"),
        Product(name: "Mi 11", brand: "Xiaomi", price: "$699", imageName: "nike2"),
        Product(name: "OnePlus 9", brand: "OnePlus", price: "$699", imageName: "nike3"),
        Product(name: "Xperia 1 III", brand: "Sony", price: "$699", imageName: "watchTissot"),
        Product(name: "Mate 40 Pro", brand: "Huawei", price: "$699", imageName: "watchWoman"),
        Product(name: "Zenfone 8", brand: "Asus", price: "$699", imageName: "zara"),
        Product(name: "Velvet", brand: "LG", price: "$699", imageName: "zarabag")
    ]
}
