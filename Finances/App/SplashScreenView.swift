import SwiftUI

struct SplashScreenView: View {
    // MARK: - State
    
    @State private var logoScale: CGFloat = 0.5
    @State private var logoOpacity: Double = 0.0
    @State private var textOpacity: Double = 0.0
    @State private var isActive: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        if isActive {
            // Transition to main app
            NavigationStack {
                AuthenticationView() 
                    .navigationBarHidden(true)
            }
            .transition(.opacity)
            .zIndex(2)
        } else {
            // Splash Screen
            VStack(spacing: 24) {
                Spacer()
                
                // Logo
                Image("LogoFull")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .scaleEffect(logoScale)
                    .opacity(logoOpacity)
                
                Spacer()
                
                // Loading indicator
                VStack(spacing: 12) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.appPrimary))
                        .scaleEffect(1.2)
                    
                    Text("Loading your finances...")
                        .font(.subheadline)
                        .foregroundStyle(Color.appTextSecondary)
                }
                .opacity(textOpacity)
                .padding(.bottom, 60)
            }
            .padding()
            .withAppBackground()
            .onAppear {
                // Start animations
                performAnimations()
            }
        }
    }
    
    // MARK: - Animation Logic
    
    /// Perform splash screen animations sequence
    private func performAnimations() {
        // Logo scale and fade in
        withAnimation(.easeOut(duration: 0.8)) {
            logoScale = 1.0
            logoOpacity = 1.0
        }
        
        // Text and loading fade in
        withAnimation(.easeOut(duration: 0.6).delay(0.4)) {
            textOpacity = 1.0
        }
        
        // Transition to main app
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation(.easeInOut(duration: 0.5)) {
                isActive = true
            }
        }
    }
}
