//
//  ProfileView.swift
//  ECommerce
//
//  Created by KAK-REAK on 1/9/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var username: String = "Kouern Doch"
    @State private var email: String = "dochkouern@gmail.com"
    
    var body: some View {
        NavigationStack {
            VStack {
                // Profile Picture
                Image("zara")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.top, 40)
                
                Spacer().frame(height: 20)
                
                CustomTextField(label: "Username", icon: "person", placeholder: "Enter your username", text: $username)
                
                CustomTextField(label: "Email", icon: "envelope", placeholder: "Enter your email", text: $email)
                
                Spacer().frame(height: 40)
                
                // Account Linked With
                VStack(alignment: .leading, spacing: 16) {
                    Text("Account Linked With")
                        .font(.headline)
                        .foregroundColor(.gray)
                    SocialSignInButton(imageName: "google", text: "Sign Up with Google") {
                        print("Google Sign Up tapped")
                    }
                    SocialSignInButton(imageName: "facebook", text: "Sign Up with Facebook") {
                        print("Facebook Sign Up tapped")
                    }
                }
                Spacer()
            }
            .navigationBarTitle("My Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: NavigationLink(destination: SettingView()) {
                Image(systemName: "gearshape")
                    .foregroundColor(.black)
            })
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ProfileView()
}
