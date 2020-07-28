//
//  CardItemData.swift
//  Dribbble-SmartHomeApp
//
//  Created by AJ Picard on 7/28/20.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var device: String
    var icon: String
    var color: Color
    var titleColor: Color
    
}

var cards = [

    Card(title: "Bathroom", device: "1 Device", icon: "Bath", color: Color(#colorLiteral(red: 1, green: 0.423946321, blue: 0.2327748835, alpha: 1)), titleColor: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Card(title: "Living Room", device: "4 Devices", icon: "LivingRoom", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), titleColor: Color(#colorLiteral(red: 1, green: 0.423946321, blue: 0.2327748835, alpha: 1))),
    Card(title: "Kitchen", device: "2 Devices", icon: "Pots", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), titleColor: Color(#colorLiteral(red: 1, green: 0.423946321, blue: 0.2327748835, alpha: 1))),
    Card(title: "Dining Room", device: "1 Device", icon: "DiningRoom", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), titleColor: Color(#colorLiteral(red: 1, green: 0.423946321, blue: 0.2327748835, alpha: 1))),

]
