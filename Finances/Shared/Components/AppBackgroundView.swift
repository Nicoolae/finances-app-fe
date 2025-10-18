import SwiftUI

/// Reusable background gradient view for the app
///
/// Provides the consistent cosmic purple gradient used across all main views.
/// The gradient creates depth and visual interest while maintaining readability.
///
/// Usage:
/// ```swift
/// var body: some View {
///     ZStack {
///         AppBackgroundView()
///
///         // Your content here
///         Text("Hello")
///     }
/// }
/// ```
struct AppBackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                Color.appBackground,
                Color.appBackgroundSecondary,
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

// MARK: - View Extension
/*
 The View extension allows us to define a custom
 behaviour for the view, adding extra functionalities
 and then use this as a property.
 */
extension View {
    /// Applies the app's standard background gradient behind this view
    ///
    /// This is a convenience modifier that wraps the view in a ZStack
    /// with AppBackgroundView as the background layer.
    ///
    /// ## Example
    /// ```swift
    /// VStack {
    ///     Text("Dashboard")
    /// }
    /// .withAppBackground()
    /// ```
    ///
    /// - Returns: The view with background gradient applied
    func withAppBackground() -> some View {
        ZStack {
            AppBackgroundView()
            // The caller view.
            self
        }
    }
}
