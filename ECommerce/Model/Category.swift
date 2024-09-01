import Foundation

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let productCount: String
    let imageName: String
}

let categories = [
    Category(name: "New Arrivals", productCount: "205 Products", imageName: "jean"),
    Category(name: "Clothes", productCount: "205 Products", imageName: "tshirt2"),
    Category(name: "Bags", productCount: "205 Products", imageName: "zara"),
    Category(name: "Shoes", productCount: "205 Products", imageName: "zara1")
]
