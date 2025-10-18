import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                colors: [
                    Color.appBackground,
                    Color.appBackgroundSecondary
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 24) {
                    
                    // MARK: - Header
                    
                    VStack(spacing: 12) {
                        Text("💰")
                            .font(.system(size: 64))
                        
                        Text("Finances")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundStyle(Color.appTextPrimary)
                        
                        Text("Color System Preview")
                            .font(.subheadline)
                            .foregroundStyle(Color.appTextSecondary)
                    }
                    .padding(.top, 60)
                    
                    // MARK: - Balance Card Example
                    
                    VStack(spacing: 16) {
                        Text("TOTAL BALANCE")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.appTextSecondary)
                            .tracking(1.2)
                        
                        Text("€12,450.80")
                            .font(.system(size: 48, weight: .bold))
                            .foregroundStyle(Color.appTextPrimary)
                        
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.up.right")
                                .font(.caption)
                                .fontWeight(.bold)
                            Text("+12.5%")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("this month")
                                .font(.subheadline)
                                .foregroundStyle(Color.appTextSecondary)
                        }
                        .foregroundStyle(Color.appSuccess)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.appSuccess.opacity(0.15))
                        .clipShape(Capsule())
                    }
                    .frame(maxWidth: .infinity)
                    .padding(28)
                    .background(Color.appBackgroundSecondary)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(Color.appBorder, lineWidth: 1)
                    )
                    .shadow(color: Color.appPrimary.opacity(0.1), radius: 20, y: 10)
                    .padding(.horizontal, 20)
                    
                    // MARK: - Background Colors
                    
                    ColorSection(title: "Background Colors") {
                        BackgroundSwatch(
                            title: "Background",
                            subtitle: "Main background",
                            color: Color.appBackground
                        )
                        BackgroundSwatch(
                            title: "Secondary",
                            subtitle: "Cards, panels",
                            color: Color.appBackgroundSecondary
                        )
                        BackgroundSwatch(
                            title: "Tertiary",
                            subtitle: "Modals, overlays",
                            color: Color.appBackgroundTertiary
                        )
                    }
                    
                    // MARK: - Brand Colors
                    
                    ColorSection(title: "Brand Colors") {
                        ColorRow(
                            title: "Primary",
                            subtitle: "Main actions, CTAs",
                            color: Color.appPrimary
                        )
                        ColorRow(
                            title: "Accent",
                            subtitle: "Highlights, badges",
                            color: Color.appAccent
                        )
                        ColorRow(
                            title: "Secondary",
                            subtitle: "Less prominent actions",
                            color: Color.appSecondary
                        )
                    }
                    
                    // MARK: - Semantic Colors
                    
                    ColorSection(title: "Semantic Colors") {
                        ColorRow(
                            title: "Success",
                            subtitle: "Income, positive values",
                            color: Color.appSuccess,
                            example: "+€500.00"
                        )
                        ColorRow(
                            title: "Danger",
                            subtitle: "Expenses, negative values",
                            color: Color.appDanger,
                            example: "-€200.00"
                        )
                        ColorRow(
                            title: "Warning",
                            subtitle: "Alerts, attention needed",
                            color: Color.appWarning,
                            example: "Budget limit"
                        )
                    }
                    
                    // MARK: - Text Colors
                    
                    ColorSection(title: "Typography") {
                        VStack(alignment: .leading, spacing: 16) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Primary Text")
                                    .font(.headline)
                                    .foregroundStyle(Color.appTextPrimary)
                                Text("Used for titles, headings, and main content")
                                    .font(.caption)
                                    .foregroundStyle(Color.appTextSecondary)
                            }
                            
                            Divider()
                                .background(Color.appBorder)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Secondary Text")
                                    .font(.headline)
                                    .foregroundStyle(Color.appTextSecondary)
                                Text("Used for descriptions, subtitles, and less important information")
                                    .font(.caption)
                                    .foregroundStyle(Color.appTextSecondary)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    // MARK: - Interactive Examples
                    
                    ColorSection(title: "Interactive Elements") {
                        VStack(spacing: 12) {
                            // Primary Button
                            Button(action: {}) {
                                Text("Primary Button")
                                    .font(.headline)
                                    .foregroundStyle(Color.appBackground)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.appPrimary)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                            
                            // Secondary Button
                            Button(action: {}) {
                                Text("Secondary Button")
                                    .font(.headline)
                                    .foregroundStyle(Color.appTextPrimary)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.appBackgroundTertiary)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color.appBorder, lineWidth: 1)
                                    )
                            }
                        }
                    }
                    
                    .padding(.bottom, 40)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - Supporting Views

struct ColorSection<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(Color.appTextPrimary)
            
            content
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(Color.appBackgroundSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.appBorder, lineWidth: 1)
        )
        .padding(.horizontal, 20)
    }
}

struct ColorRow: View {
    let title: String
    let subtitle: String
    let color: Color
    var example: String? = nil
    
    var body: some View {
        HStack(spacing: 16) {
            // Color swatch
            RoundedRectangle(cornerRadius: 12)
                .fill(color)
                .frame(width: 60, height: 60)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.appBorder.opacity(0.5), lineWidth: 1)
                )
            
            // Info
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.appTextPrimary)
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(Color.appTextSecondary)
                
                if let example = example {
                    Text(example)
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundStyle(color)
                        .padding(.top, 2)
                }
            }
            
            Spacer()
        }
    }
}

struct BackgroundSwatch: View {
    let title: String
    let subtitle: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            RoundedRectangle(cornerRadius: 12)
                .fill(color)
                .frame(height: 80)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.appBorder, lineWidth: 1)
                )
            
            VStack(spacing: 2) {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.appTextPrimary)
                
                Text(subtitle)
                    .font(.caption2)
                    .foregroundStyle(Color.appTextSecondary)
            }
        }
    }
}
