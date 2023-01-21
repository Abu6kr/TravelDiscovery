//
//  Tect2View.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 09.06.2022.
//

import SwiftUI

struct Tect2View: View {
    let Catgres4:[Catgre4] = [
        .init(name: "Arm", imageName: "amy"),
        .init(name: "billy", imageName: "billy"),
        .init(name: "sam", imageName: "sam")
    ]
    let Catgres2:[Catgre2] = [
        .init(name: "Pris", contre: "Frans", imageName: "eiffeltower"),
        .init(name: "Pris", contre: "Japan", imageName: "japan"),
        .init(name: "Pris", contre: "newyork", imageName: "newyork"),
    ]
    var body: some View {
        
        ScrollView {
            ZStack {
                VStack(alignment:.leading) {
                    Text("Welcome")
                        .font(.system(size: 60,weight: .semibold))
                    Text("Where to?")
                        .font(.system(size: 24))
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Find a flight")
                            .foregroundColor(.gray )
                        Spacer()
                        
                    }.font(.system(size: 14,weight: .semibold))
                        .padding()
                        .background(.white)
                        .cornerRadius(12)
                        .padding(30)

                }.padding(40)
            }
            .background(Color.green)
            VStack {
                HStack {
                    Text("Discover")
                        .font(.system(size: 14,weight: .semibold))
                    Spacer()
                }.padding(.horizontal)
                    .padding(.top)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:8){
                        ForEach(Catgres2, id: \.self) { Catgre2 in
                            NavigationLink(destination: {
                                DataDescteiView()
                            }, label: {
                                VStack(alignment: .leading,spacing: 0) {
                                    Image(Catgre2.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 127, height: 103)
                                        .cornerRadius(4)
                                        .padding(.horizontal, 6)
                                        .padding(.vertical, 6)

                                    
                                    Text("London")
                                        .font(.system(size: 12,weight: .semibold))
                                        .foregroundColor(Color.black)
                                        .padding(.horizontal, 12)
                                }
                            })
                                .padding(.bottom)
                        }
                    }.padding(.horizontal)
                }
            }
            VStack {
                HStack {
                    Text("Trending Creators")
                        .font(.system(size: 14,weight: .semibold))
                    Spacer()
                    Text("See all")
                        .font(.system(size: 12,weight: .semibold))
                }.padding(.horizontal)
                    .padding(.top)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top,spacing: 12){
                        ForEach(Catgres4, id: \.self) { Catgrertt4 in
                            VStack {
                                Image(Catgrertt4.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(60)
                                Text(Catgrertt4.name)
                                    .font(.system(size: 11,weight: .semibold))
                                    .multilineTextAlignment(.center)
                            }
                                .frame(width: 60)
                                .shadow(color: .gray, radius: 1.15, x: 0.0, y: 1.02)
                                .padding(.bottom)
                        }
                    }.padding(.horizontal)
                }
            }

        }
                
    }
    
}

struct Tect2View_Previews: PreviewProvider {
    static var previews: some View {
        Tect2View()
    }
}
