import SwiftUI

// MARK: - Color Extension for App Theme

extension Color {
    
    // MARK: - Background Colors
    
    /// Primary background color - Deep cosmic purple (#090611)
    ///
    /// Usage: Main app background, root views
    /// - Light mode: N/A (app is dark-only)
    /// - Dark mode: Deep purple-black
    static let appBackground = Color("Background")
    
    /// Secondary background color for elevated surfaces (#14101F)
    ///
    /// Usage: Cards, panels, elevated content containers
    /// Creates subtle depth hierarchy above primary background
    static let appBackgroundSecondary = Color("BackgroundSecondary")
    
    /// Tertiary background color for highly elevated elements (#1F1A2E)
    ///
    /// Usage: Modal overlays, popovers, floating elements
    /// Creates maximum elevation and prominence
    static let appBackgroundTertiary = Color("BackgroundTertiary")
    
    // MARK: - Brand Colors
    
    /// Primary brand color - Vibrant purple (#A78BFA)
    ///
    /// Usage: Primary CTAs, main actions, selected states, highlights
    /// This is the main interactive color of the app
    /// Use for buttons, links, selected tabs, active states
    static let appPrimary = Color("Primary")
    
    /// Secondary brand color - Muted gray-purple (#9B91B3)
    ///
    /// Usage: Secondary actions, disabled states, less prominent buttons
    /// Provides visual hierarchy below primary actions
    static let appSecondary = Color("Secondary")
    
    /// Accent color - Light purple (#C4B5FD)
    ///
    /// Usage: Highlights, badges, notifications, special emphasis
    /// Use sparingly for drawing attention to important elements
    static let appAccent = Color("Accent")
    
    // MARK: - Semantic Colors
    
    /// Success color - Bright green (#4ADE80)
    ///
    /// Usage: Income transactions, positive values, success messages
    /// Indicates financial gains, completed actions, positive feedback
    /// Examples: +€500, "Transaction successful", profit indicators
    static let appSuccess = Color("Success")
    
    /// Danger color - Pink-red (#FB7185)
    ///
    /// Usage: Expense transactions, negative values, error messages
    /// Indicates financial losses, warnings, destructive actions
    /// Examples: -€200, "Delete transaction", loss indicators
    static let appDanger = Color("Danger")
    
    /// Warning color - Golden yellow (#FBBF24)
    ///
    /// Usage: Alerts, warnings, pending states, attention-needed items
    /// Indicates caution, pending transactions, important notices
    /// Examples: Budget limits, pending approvals, important updates
    static let appWarning = Color("Warning")
    
    // MARK: - Text Colors
    
    /// Primary text color - Light purple-white (#F5F3FF)
    ///
    /// Usage: Main text, headings, primary content
    /// High contrast for optimal readability on dark backgrounds
    /// Use for body text, titles, important labels
    static let appTextPrimary = Color("TextPrimary")
    
    /// Secondary text color - Muted purple-gray (#B4ACCA)
    ///
    /// Usage: Subtitles, descriptions, less important text, placeholders
    /// Lower contrast for visual hierarchy and reduced emphasis
    /// Use for helper text, timestamps, secondary information
    static let appTextSecondary = Color("TextSecondary")
    
    // MARK: - Structural Colors
    
    /// Border and divider color - Dark purple (#2D2640)
    ///
    /// Usage: Borders, dividers, separators, outlines
    /// Subtle separation between elements without being distracting
    /// Use for table rows, card borders, input field outlines
    static let appBorder = Color("Border")
    
    // MARK: - Helper Methods
    
    /// Initialize Color from hexadecimal string
    ///
    /// Supports 3, 6, and 8 character hex strings (with or without #)
    /// - Parameter hex: Hexadecimal color string (e.g., "#A78BFA", "A78BFA", "ABC")
    ///
    /// Examples:
    /// ```swift
    /// Color(hex: "#A78BFA")  // RGB
    /// Color(hex: "A78BFA")   // Without #
    /// Color(hex: "#C4B5FDFF") // RGBA
    /// ```
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
