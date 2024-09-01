import SwiftUI

struct OrderCardView: View {
    
    let order: Order
    
    var body: some View {
        VStack(spacing: 15) {
            HStack(spacing: 15) {
                Image(order.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 90)
                    .cornerRadius(10)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(order.productName)
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                    
                    Text("Color: \(order.color)")
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Text("Qty: \(order.quantity)")
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 10) {
                    Text(order.status == .onProgress ? "OnProgress" : "Completed")
                        .font(.system(size: 13, weight: .regular, design: .rounded))
                        .foregroundColor(order.status == .onProgress ? .orange : .green)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 5)
                        .background(Color.white)
                        .cornerRadius(6)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(order.status == .onProgress ? Color.orange : Color.green, lineWidth: 1)
                        )
                    
                    Text("$\(String(format: "%.2f", order.price))")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)
                }
            }
            
            HStack(spacing: 10) {
                Button(action: {
                    // Detail action
                }) {
                    Text("Detail")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: .infinity)
                                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                        )
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Tracking action
                }) {
                    Text("Tracking")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(.infinity)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}

#Preview {
    OrderCardView(order: Order(productName: "Bix Bag Limited Edition 229sdffds", color: "white", quantity: 20, price: 100.00, status: .onProgress, imageName: "bag"))
}
