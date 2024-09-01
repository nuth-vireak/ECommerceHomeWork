import SwiftUI

struct WelcomeView: View {
    
    @State private var currentPage = 0
    @State private var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    let images = [
        ("watchTissot", "Various Collections Of The Latest Products", "Urna amet, suspendisse ullamcorper ac edit diam facilisis cursus vestibulum"),
        ("bagboy1", "Elegant Timepieces - Watch 2", "Urna amet, suspendisse ullamcorper ac edit diam facilisis cursus vestibulum"),
        ("watchWoman", "Modern Designs - Watch 3 Test The Latest", "Urna amet, suspendisse ullamcorper ac edit diam facilisis cursus vestibulum")
    ]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                
                imageSlider
                
                NavigationLink {
                    RegistrationView()
                } label: {
                    Text("Create Account")
                        .modifier(CustomButtonModifier())
                }
                .padding(.horizontal)
                
                NavigationLink {
                    
                } label: {
                    Text("Already have an Account")
                        .foregroundColor(.blue)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.large)
        .onReceive(timer) { _ in
            withAnimation {
                currentPage = (currentPage + 1) % images.count
            }
        }
    }
    
    fileprivate var imageSlider: some View {
        TabView(selection: $currentPage) {
            ForEach(0..<images.count, id: \.self) { index in
                VStack(spacing: 20) {
                    Image(images[index].0)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 360)
                        .cornerRadius(20)
                    
                    Text(images[index].1)
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    Text(images[index].2)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .tag(index)
                .padding([.vertical, .horizontal])
            }
        }
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

#Preview {
    WelcomeView()
}
