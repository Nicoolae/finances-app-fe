import SwiftUI

/// This is the common TextField used in the app
/// Separate component to have a common style
struct AppTextField: View {
    // MARK: - Params
    /// User's input
    @Binding var text: String
    /// TextField placeholder
    let placeholder: String
    /// The list of validators for this field
    let validators: [StringValidator]

    // MARK: - Component State
    /// Tells whether the field is focused or not
    @FocusState private var isFocused: Bool
    /// The error message if not valid field
    @State private var errorMessage: String? = nil
    
    var body: some View {
        ZStack(alignment: .leading) {
            // Placeholder Custom (solo se vuoto)
            if text.isEmpty {
                Text(placeholder)
                    .foregroundStyle(Color.appTextSecondary.opacity(0.5))
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(.leading, 16)
            }

            // Text Field (placeholder vuoto)
            TextField("", text: $text)
                .focused($isFocused)
                .foregroundStyle(.white)
                .font(.body)
                .padding(.horizontal, 16)
                .padding(.vertical, 14)
                .autocorrectionDisabled(true)
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.appBackgroundSecondary)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(
                            isFocused
                                ? LinearGradient(
                                    colors: [
                                        Color.appPrimary, Color.appAccent,
                                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                                : LinearGradient(
                                    colors: [
                                        Color.appBorder.opacity(0.3),
                                        Color.appBorder.opacity(0.3),
                                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                ),
                            lineWidth: isFocused ? 2 : 1
                        )
                )
                .shadow(
                    color: isFocused
                        ? Color.appPrimary.opacity(0.2) : Color.clear,
                    radius: isFocused ? 15 : 0,
                    y: isFocused ? 8 : 0
                )
        )
        .onChange(of: isFocused){
            if(!isFocused){
                errorMessage = validate(validators, text)
            }
        }
        
        if let error = errorMessage{
            Text(error)
                .foregroundStyle(Color.danger)
                .font(.caption)
                .padding(.leading, 16)
        }
    }
}
