//
//  PopularDestionsView2.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 06.06.2022.
//

import SwiftUI

struct PopularDestionsView2: View {
    let Catgres4:[Catgre4] = [
        .init(name: "Arm", imageName: "amy"),
        .init(name: "billy", imageName: "billy"),
        .init(name: "sam", imageName: "sam")
    ]
     var body: some View {
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

struct PopularDestionsView2_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.orange
            PopularDestionsView2()
        }
     
    }
}
