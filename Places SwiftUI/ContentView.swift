//
//  ContentView.swift
//  Places SwiftUI
//
//  Created by Lynneker Souza on 4/23/20.
//  Copyright © 2020 Lynneker Souza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var city: City
    
    var body: some View {
        VStack() {
            ZStack(alignment: .bottom) {
                MapView(coordinate: city.locationCoordinate)
                    .frame(height: 300)
                CircleImage(image: city.image)
                    .offset(y: 100)
            }
            .padding(.bottom, 100)
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.title)
                HStack {
                    Text(city.state)
                        .font(.subheadline)
                    Spacer()
                    Text(city.contry)
                        .font(.subheadline)
                }
            }
            .padding(.horizontal)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(city: placesData[3])
    }
}
