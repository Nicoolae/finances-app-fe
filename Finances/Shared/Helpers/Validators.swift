import Foundation

/// Helper class that defines some validators
/// to be used in app to validate user input

/// String validator type
/// It is a closure, so it will return a function that accepts:
/// string -> input to be validated
/// string? -> nil if input is ok, error msg if input is not valid
public typealias StringValidator = (String) -> String?

// MARK: - String Validators

/// Checks if input is empty or not
public func notEmpty(_ message: String = "Campo obbligatorio") -> StringValidator {
    // "value" it's the closure param
    return { value in
        // Delete whitespaces and new line chars
        let trimmed = value.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.isEmpty ? message : nil
    }
}

// MARK: - Helper Functions

/// Checks al list of StringValidators
///
/// This function loop on a list of validators, then checks each of them
/// at the first one that return an error message, it return the error message
/// and stops.
///
/// - Parameter validators: the list of validators to be checked
/// - Returns: nil if all validators are passed, error message if not
public func validate(_ validators: [StringValidator], _ value: String) -> String? {
    for validator in validators {
        if let errorMessage = validator(value) {
            return errorMessage
        }
    }
    return nil
}
