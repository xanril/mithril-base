//
//  ContentView.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/22/22.
//

import SwiftUI

struct WeatherPage: View {
    
    @State private var viewModel: WeatherPageViewModel = WeatherPageViewModel()
    
    
    
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
                    
                    Button (action: {
                        // action
                        
                    }) {
                        Image(systemName: "cloud.fill")
                            .font(.system(size:30))
                            .tint(Color(uiColor: .black))
                    }
                    
                    TextField("search", text: $viewModel.searchText)
                        .textFieldStyle(.roundedBorder)
                    
                    Button (action: {
                        
                        viewModel.getWeather()
                        
                    }) {
                        Image(systemName: "cloud.fill")
                            .font(.system(size:30))
                            .tint(Color(uiColor: .black))
                    }
                    
                }
                .padding([.leading, .bottom, .trailing])
                
                VStack (alignment:.trailing) {
                    
                    Image(systemName: viewModel.iconName)
                        .font(.system(size: 110))
                        .symbolRenderingMode(.multicolor)
                    
                    Text("25")
                        .font(.system(size: 80))
                    
                    Text(viewModel.location)
                        .padding(.trailing)
                }
                .padding(.trailing)

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherPage()
    }
}