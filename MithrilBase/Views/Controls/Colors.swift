//
//  Typography.swift
//  BricksUI
//
//  Copyright © 2020 by a cool group. All rights reserved.
//

import SwiftUI

extension Color {
    
    // MARK: Basic Colors
    
    static let brBackground = Color("background")
    static let brBasic = Color("basic")
    static let brPrimary = Color("primary")
    
    // MARK: Font Colors
    
    /// Standard Font Color
    static let brFontStd = Color("font_std")
    /// Hint Font Color
    static let brFontHint = Color("font_hint")
    /// Disabled Font Color
    static let brFontDisabled = Color("font_disabled")
    /// Button Font Color
    static let brFontBtn = Color("font_button")
    
    // MARK: Semantic Colors
    
    static let brDanger = Color("danger")
    static let brInfo = Color("info")
    static let brSuccess = Color("success")
    static let brWarning = Color("warning")
    
    // MARK: State Colors
    
    /// Active State Color - Primary Style
    static let brActivePrimary = Color("activePrimary")
    /// Active State Color - Basic Style
    static let brActiveBasic = Color("activeBasic")
}

struct Color_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack{
                Rectangle().size(CGSize(width: 50, height: 50))
                    .foregroundColor(.brBasic)
                Rectangle().size(CGSize(width: 50, height: 50))
                    .foregroundColor(.brPrimary)
                Rectangle().size(CGSize(width: 50, height: 50))
                    .foregroundColor(.brSuccess)
                Rectangle().size(CGSize(width: 50, height: 50))
                .foregroundColor(.brInfo)
                Rectangle().size(CGSize(width: 50, height: 50))
                .foregroundColor(.brWarning)
                Rectangle().size(CGSize(width: 50, height: 50))
                .foregroundColor(.brDanger)
            }
            Text("Hello, World!")
                .foregroundColor(.brActivePrimary)
                .background(Color.brActiveBasic)
                .environment(\.colorScheme, .dark)
        }
    .padding()
    }
}
