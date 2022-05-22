//
//  ContentView.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: UIScreen.main.bounds.width,
                       maxHeight: UIScreen.main.bounds.height)
            
            VStack (alignment: .trailing) {

                HStack {

                    Spacer()

                    Image(systemName: "cloud.fill")
                        .font(.system(size: 80))
                    Text("25")
                        .font(.system(size: 80))
                }
                .padding([.top, .trailing])

                Text("Cloudy")
                    .padding(.trailing)

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
