import SwiftUI

struct CustomPasswordField: View {
    
    var label: String
    var icon: String
    var placeholder: String
    
    @Binding var text: String
    @State private var isSecure: Bool = true
    
    var body: some View {
        VStack {
            Text(label)
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 20) {
                Image(systemName: icon)
                    .foregroundColor(.gray.opacity(0.6))
                if isSecure {
                    SecureField(placeholder, text: $text)
                        .padding(.vertical, 12)  // Increased vertical padding
                } else {
                    TextField(placeholder, text: $text)
                        .padding(.vertical, 12)  // Increased vertical padding
                }
                Button(action: {
                    isSecure.toggle()
                }) {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                        .foregroundColor(.gray.opacity(0.6))
                }
            }
            .padding(.horizontal, 15)
            .frame(height: 55)
            .background(Color(.secondarySystemBackground).opacity(0.3))
        .cornerRadius(8)
        }
    }
}

#Preview {
    CustomPasswordField(label: "Password", icon: "lock", placeholder: "Create your password", text: .constant(""))
}
