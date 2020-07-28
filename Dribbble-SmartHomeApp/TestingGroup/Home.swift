//
//  Home.swift
//  Dribbble-SmartHomeApp
//
//  Created by AJ Picard on 7/28/20.
//

import SwiftUI

struct TestingHome: View {
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 150), spacing: 20)],
                spacing: 20
            )
            {
                ForEach(testers) { item in
                    ContentView(testing: item)
                }
            }
            .padding(.horizontal, 30)
        }
        .frame(maxWidth: .infinity)
    }
}

struct TestingHome_Previews: PreviewProvider {
    static var previews: some View {
        TestingHome()
    }
}
