import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("GENERAL")) {
                    SettingRow(iconName: "person", title: "Edit Profile")
                    SettingRow(iconName: "exclamationmark.lock", title: "Change Password")
                    SettingRow(iconName: "bell", title: "Notification")
                    SettingRow(iconName: "key.viewfinder", title: "Security")
                }
                
                Section(header: Text("ACCOUNTS")) {
                    SettingRow(iconName: "icloud", title: "iCloud")
                    SettingRow(iconName: "lock", title: "Password & Security")
                }

                Section(header: Text("ABOUT")) {
                    SettingRow(iconName: "info.circle", title: "General")
                    SettingRow(iconName: "arrow.up.forward.circle", title: "Software Update")
                }

                Section {
                    NavigationLink(destination: WelcomeView()) {
                        HStack {
                            Image(systemName: "rectangle.portrait.and.arrow.forward")
                                .foregroundColor(.red)
                            Text("LogOut")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.white, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

struct SettingRow: View {
    var iconName: String
    var title: String

    var body: some View {
        NavigationLink(destination: DetailView(title: title)) {
            HStack {
                Image(systemName: iconName)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
                Text(title)
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.vertical, 4)
        }
    }
}

struct DetailView: View {
    var title: String

    var body: some View {
        Text("\(title) Page")
            .font(.system(size: 15, weight: .medium, design: .rounded))
            .navigationTitle(title)
    }
}

#Preview {
    SettingView()
}
