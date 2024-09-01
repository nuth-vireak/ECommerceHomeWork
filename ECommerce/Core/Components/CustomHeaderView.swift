import SwiftUI

struct CustomHeaderView: View {
    var body: some View {
        HStack {
            HStack(spacing: 12) {
                Image("zara")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hi, Kouern Doch")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    
                    Text("Let's go shopping")
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                Button(action: {
                    // Search action
                }) {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    // Notification action
                }) {
                    Image(systemName: "bell")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
    }
}

#Preview {
    CustomHeaderView()
}
