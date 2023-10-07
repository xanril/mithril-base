//
//  WorkshopPage.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 9/16/23.
//

import SwiftUI

struct WorkshopPage: View {
    var body: some View {
        VStack {
            BRButton(text: "hello world", color: .brDanger) {
                print("button clicked")
            }
            
            BRCard(image: Image(systemName: "location.fill"),
                   title: "Title",
                   subtitle: "Subtitle",
                   text: "This is the text")
            
            BRToggle(toggleState: true, style: .defaultStyle)
        }
        .padding(.horizontal, 12.0)
    }
}

struct WorkshopPage_Previews: PreviewProvider {
    static var previews: some View {
        WorkshopPage()
    }
}
