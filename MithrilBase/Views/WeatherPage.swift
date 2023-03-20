//
//  ContentView.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/22/22.
//

import SwiftUI

struct WeatherPage: View {
    
    @StateObject private var viewModel = WeatherPageViewModel()
    
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
                        Image(systemName: "location.fill")
                            .font(.system(size:30))
                            .tint(Color(uiColor: .black))
                    }
                    
                    TextField("search", text: $viewModel.searchText)
                        .textFieldStyle(.roundedBorder)
                    
                    Button (action: {
                        
                        Task.init {
                            await viewModel.getWeather()
                        }
                        
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size:30))
                            .tint(Color(uiColor: .black))
                    }
                    
                }
                .padding([.leading, .bottom, .trailing])
                
                VStack (alignment:.trailing) {
                    
                    Image(systemName: viewModel.iconName)
                        .frame(height: 150.0)
                        .font(.system(size: 110))
                        .symbolRenderingMode(.multicolor)
                    
                    Text(viewModel.temperature)
                        .font(.system(size: 80))
                    
                    Text(viewModel.location)
                        .font(.title2)
                        .padding(.trailing)
                }
                .padding(.trailing)

                Spacer()
            }
        }
        .onAppear() {
            Task.init {
                viewModel.searchText = "Manila"
                await viewModel.getWeather()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherPage()
    }
}
