import SwiftUI

struct RegisterView: View {
    // MARK: - State
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var birthDate: Date = Date()
    
    // Focus logic
    @FocusState var focusedField: FieldType?
    enum FieldType{
        case firstName
        case lastName
        case birthDate
    }
    

    // MARK: - Body

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                // MARK: - HEADER
                VStack(alignment: .leading, spacing: 8) {
                    Text("Registrati")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.appPrimary, Color.appAccent],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )

                    Text("Inizia a gestire le tue finanze in modo smart")
                        .font(.subheadline)
                        .foregroundStyle(Color.appTextSecondary)
                        .padding(.top, 4)
                }
                .padding(.top, 20)

                // MARK: - FORM
                VStack(alignment: .leading, spacing: 20) {
                    // TODO: - Fare una componente per ogni tipo di input
                    AppTextField(
                        text: $firstName,
                        placeholder: "Nome",
                        validators: [notEmpty()]
                    )
                    
                    AppTextField(
                        text: $lastName,
                        placeholder: "Cognome",
                        validators: [notEmpty()]
                    )
                }
                .padding(.top, 8)

            }
            .padding(.horizontal, 32)
        }
        .withAppBackground()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RegisterView()
}
