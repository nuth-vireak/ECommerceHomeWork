import SwiftUI

struct CustomTextField: View {
    
    var label: String
    var icon: String
    var placeholder: String
    
    @Binding var text: String
    
    var body: some View {
        
        VStack {
            Text(label)
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 20) {
                    Image(systemName: icon)
                        .foregroundColor(.gray.opacity(0.6))
                    TextField(placeholder, text: $text)
                        .padding(.vertical, 12)  // Increased vertical padding
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
    CustomTextField(label: "Username", icon: "person", placeholder: "Create your username", text: .constant(""))
}

