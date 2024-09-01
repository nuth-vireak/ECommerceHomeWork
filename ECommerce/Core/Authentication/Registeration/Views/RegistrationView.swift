import SwiftUI

struct RegistrationView: View {
    
    @StateObject private var viewModel = RegistrationViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    VStack(spacing: 7) {
                        Text("Create Account")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 27, weight: .medium, design: .rounded))
                            .fontWeight(.semibold)
                        Text("Start learning with create your account.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(.gray)
                    }
                    VStack(spacing: 25) {
                        CustomTextField(label: "Username", icon: "person", placeholder: "Create your username", text: $viewModel.username)
                        CustomTextField(label: "Email or Phone Number", icon: "envelope", placeholder: "Enter your email or phone number", text: $viewModel.email)
                        CustomPasswordField(label: "Password", icon: "lock", placeholder: "Create your password", text: $viewModel.password)
                        
                        NavigationLink {
                            ECommerceTabBarView()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarTitleDisplayMode(.large)
                        } label: {
                            Text("Create Account")
                                .modifier(CustomButtonModifier())
                        }
                        
                        VStack(spacing: 20) {
                            Text("Or using other methods")
                                .font(.system(size: 16, weight: .regular, design: .rounded))
                                .foregroundColor(.gray.opacity(0.6))
                            
                            SocialSignInButton(imageName: "google", text: "Sign Up with Google") {}
                            SocialSignInButton(imageName: "facebook", text: "Sign Up with Facebook") {}
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal, 21)
            }
            .scrollDisabled(true)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    RegistrationView()
}
