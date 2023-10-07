//
//  Toggles.swift
//  BricksUI
//
//  Copyright © 2020 by a cool group. All rights reserved.
//

import SwiftUI


public struct BRCheckbox: View {
    
    enum Style {
        case defaultStyle, primary, disabled, success, warning, danger, info
    }
    
    @State var checkboxState: Bool = true
    var style: Style
    
    struct ColoredCheckboxStyle: ToggleStyle {
        var onColor = Color.brPrimary
        var offColor = Color.brFontDisabled
        
        func makeBody(configuration: Self.Configuration) -> some View {
            return HStack {
                configuration.label
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 22, height: 22)
                    .onTapGesture { configuration.isOn.toggle() }
                .foregroundColor(configuration.isOn ? onColor : offColor)
            }
            
        }
    }
    
    
    public var body: some View {
        switch style {
        case .success: return AnyView(success())
        case .primary: return AnyView(primary())
        case .warning: return AnyView(warning())
        case .danger: return AnyView(danger())
        case .info: return AnyView(info())
        default: return AnyView(defaultStyle())
        }
    }
    
    
    fileprivate func defaultStyle() -> some View {
        Toggle("", isOn: $checkboxState)
            .toggleStyle(ColoredCheckboxStyle(onColor: .brBasic, offColor: .brFontDisabled))
    }
    
    fileprivate func primary() -> some View {
        Toggle("", isOn: $checkboxState)
            .toggleStyle(ColoredCheckboxStyle(onColor: .brPrimary, offColor: .brFontDisabled))
    }
    
    fileprivate func success() -> some View {
            Toggle("", isOn: $checkboxState)
            .toggleStyle(ColoredCheckboxStyle(onColor: .brSuccess, offColor: .brFontDisabled))
    }
    
    fileprivate func info() -> some View {
        Toggle("", isOn: $checkboxState)
        .toggleStyle(ColoredCheckboxStyle(onColor: .brInfo, offColor: .brFontDisabled))
    }
    
    
    fileprivate func warning() -> some View {
        Toggle("", isOn: $checkboxState)
        .toggleStyle(ColoredCheckboxStyle(onColor: .brWarning, offColor: .brFontDisabled))
    }
    
    
    fileprivate func danger() -> some View {
        Toggle("", isOn: $checkboxState)
        .toggleStyle(ColoredCheckboxStyle(onColor: .brDanger, offColor: .brFontDisabled))
    }
}


struct Checkboxes_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10){
            BRCheckbox(checkboxState: true, style: .defaultStyle)
            BRCheckbox(checkboxState: true, style: .primary)
            BRCheckbox(checkboxState: true, style: .success)
            BRCheckbox(checkboxState: true, style: .info)
            BRCheckbox(checkboxState: true, style: .warning)
            BRCheckbox(checkboxState: true, style: .danger)
        }
    }
}
