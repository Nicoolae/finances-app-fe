import SwiftUI

/// First view for authentication
/// User can, from here, Login or Register
struct AuthenticationView: View {
    /// Modal variable
    @State private var showTerms = false
    
    var body: some View {
        VStack{
            // MARK: - Welcome Text and Image
            Spacer()
            Text("Benvenuto in")
                .foregroundStyle(.textPrimary)
                .font(.title)
            Text("FINANCES")
                .foregroundStyle( LinearGradient(
                    colors: [Color.appPrimary, Color.appAccent],
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                .font(.custom("Arial", size: 50))
                .fontWeight(.bold)
                .kerning(3)
                .fontDesign(.rounded)
            Image("LoginIllustration")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
                .shadow(color: Color.appPrimary.opacity(0.4), radius: 10, y: 5)
            
           
            // MARK: - Buttons
            NavigationLink(destination: RegisterView()){
                Text("Registrati")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.appBackground)
                    .kerning(2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accent)
                    .cornerRadius(12)
                    .shadow(color: Color.accent.opacity(0.2), radius: 10, y: 5)
            }
            .padding(.horizontal, 25)
            NavigationLink(destination: LoginView()){
                Text("Login")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.appBackground)
                    .kerning(2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.textPrimary)
                    .cornerRadius(12)
                    .shadow(color: Color.textPrimary.opacity(0.2), radius: 10, y: 5)
            }
            .padding(.horizontal, 25)
            Spacer()
            
            // MARK: - Terms and Conditions
            Divider()
                .background(Color.textSecondary)
            Text("Sei completamente sicuro!")
                .foregroundStyle(Color.textPrimary)
                .padding(.top, 10)
                .font(.callout)
            
            Button("Leggi i nostri Termini & Condizioni.") {
                showTerms = true
            }
            .sheet(isPresented: $showTerms) {
                TermsView()  // Contenuto del modal
            }
            
            
        }
        .withAppBackground()
    }
}

#Preview {
    AuthenticationView()
}
