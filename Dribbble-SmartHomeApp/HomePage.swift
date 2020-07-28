//
//  HomePage.swift
//  Dribbble-SmartHomeApp
//
//  Created by AJ Picard on 7/28/20.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView()
                    .padding(.top, 25)
                    .padding(.bottom, 15)
                
                PowerUsageView()
                    .padding(.vertical, 20)
                
                LazyVGrid (
                    columns: [GridItem(.adaptive(minimum: 150), spacing: 20)],
                    spacing: 20
                ) {
                    ForEach(cards) { item in
                        CardItemView(card: item)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                ZStack {
                    HStack {
                        Image("Aj")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.leading, 30)
                        VStack(alignment: .leading) {
                            Text("Worry About Me")
                                .font(.system(size: 18, weight: .bold, design: .default))
                                .foregroundColor(.white)
                            Text("Ellie Gouldingm, Blackbear")
                                .font(.system(size: 14, weight: .medium, design: .default))
                                .foregroundColor(Color(#colorLiteral(red: 0.9247303299, green: 0.9247303299, blue: 0.9247303299, alpha: 1)))
                        }
                        .padding(.trailing, 10)
                        
                        Spacer()
                        
                        Image(systemName: "heart")
                            .foregroundColor(.white)
                            .padding(.trailing, 10)
                        
                        Image(systemName: "pause")
                            .frame(width: 30, height: 30)
                            .background(Color(#colorLiteral(red: 1, green: 0.423946321, blue: 0.2327748835, alpha: 1)))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .padding(.trailing, 30)
                    }
                    .offset(y: -40)
                    
                    HStack (spacing: 70) {
                        Image(systemName: "house")
                            .font(.system(size: 22))
                            .foregroundColor(Color(#colorLiteral(red: 0.1235753968, green: 0.01271305047, blue: 0.4238687158, alpha: 1)))
                        Image(systemName: "person.2")
                            .font(.system(size: 22))
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        Image(systemName: "bolt")
                            .font(.system(size: 22))
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        Image(systemName: "gear")
                            .font(.system(size: 22))
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(30)
                    .offset(y: 60)
                   
                }
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .background(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                .cornerRadius(30)
                .offset(y: 35)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


//MARK: HeaderView
struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Welcome home")
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.gray)
                Text("Alex Tobey")
                    .font(.system(size: 35, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.leading, 30)
            Spacer()
            Image("Aj")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 30)
        }
    }
}

//MARK: PowerUsageView

struct PowerUsageView: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Image(systemName: "bolt")
                        .font(.system(size: 25))
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                    
                }
                
                
                
                VStack(alignment: .leading) {
                    Text("20.3 Kwh")
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .foregroundColor(.black)
                    Text("Power usage for today")
                        .font(.system(size: 15, weight: .medium, design: .default))
                        .foregroundColor(.gray)
                }
            }
            Spacer()
        }
        .padding(.leading, 30)
    }
}
