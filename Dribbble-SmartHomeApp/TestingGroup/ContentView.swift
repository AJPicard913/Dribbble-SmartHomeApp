//
//  ContentView.swift
//  Dribbble-SmartHomeApp
//
//  Created by AJ Picard on 7/28/20.
//

import SwiftUI

struct ContentView: View {
    var testing: Testing = testers[0]
    
    var body: some View {
        VStack {
            HStack {
                Image(testing.icon)
                    .resizable()
                    .frame(width: 33, height: 28)
                Spacer()
            }
            .padding(.leading, 15)
            .padding(.bottom, 15)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(testing.title)
                    Text(testing.device)
                }
                Spacer()
            }
            .padding(.leading, 15)
        }
        .frame(width: 160, height: 160)
        .background(testing.color)
        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
