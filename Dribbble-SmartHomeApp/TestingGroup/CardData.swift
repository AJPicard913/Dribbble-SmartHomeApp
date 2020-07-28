//
//  CardData.swift
//  Dribbble-SmartHomeApp
//
//  Created by AJ Picard on 7/28/20.
//

import SwiftUI

struct Testing: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
    var device: String
    var color: Color
    
}

var testers = [

    Testing(title: "Bathroom", icon: "Bath", device: "1 Device", color: Color(#colorLiteral(red: 1, green: 0.4235294118, blue: 0.231372549, alpha: 1))),
    Testing(title: "Living Room", icon: "LivingRoom", device: "4 Devices", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Testing(title: "Living Room", icon: "LivingRoom", device: "4 Devices", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Testing(title: "Kitchen", icon: "Pots", device: "2 Devices", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Testing(title: "Dining Room", icon: "DiningRoom", device: "1 Device", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),

]
