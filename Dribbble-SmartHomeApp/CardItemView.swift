//
//  CardItemView.swift
//  Dribbble-SmartHomeApp
//
//  Created by AJ Picard on 7/28/20.
//

import SwiftUI

struct CardItemView: View {
    
    var card: Card = cards[0]
    
    
    var body: some View {
            
            VStack {
                HStack {
                    Image(card.icon)
                        .resizable()
                        .frame(width: 33, height: 28)
                    Spacer()
                }
                .padding(.leading, 15)
                .padding(.bottom, 20)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(card.title)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(card.titleColor)
                        Text(card.device)
                            .font(.system(size: 14, weight: .medium, design: .default))
                            .foregroundColor(Color(#colorLiteral(red: 0.8538824556, green: 0.8538824556, blue: 0.8538824556, alpha: 1)))
                    }
                    Spacer()
                }
                .padding(.leading, 15)
               
            }
        .frame(width: 160, height: 160)
        .background(card.color)
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 1))
        
            
        
        
    }
}

struct CardItemView_Previews: PreviewProvider {
    static var previews: some View {
        CardItemView()
    }
}
