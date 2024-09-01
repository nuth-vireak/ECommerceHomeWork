import SwiftUI

struct SocialSignInButton: View {
    
    var imageName: String
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Text(text)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(.secondarySystemBackground).opacity(0.3))
            .foregroundColor(.black)
            .cornerRadius(.infinity)
            .overlay(
                RoundedRectangle(cornerRadius: .infinity)
                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
            )
        }
    }
}


#Preview {
    SocialSignInButton(imageName: "facebook", text: "Sign in with Facebook", action: {})
}
