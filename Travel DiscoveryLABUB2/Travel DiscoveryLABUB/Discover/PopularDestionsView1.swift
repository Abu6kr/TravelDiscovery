//
//  PopularDestionsView1.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 06.06.2022.
//

import SwiftUI

struct PopularDestionsView1: View {
    let Catgres2:[Catgre2] = [
        .init(name: "Pris", contre: "Frans", imageName: "eiffeltower"),
        .init(name: "Pris", contre: "Japan", imageName: "japan"),
        .init(name: "Pris", contre: "newyork", imageName: "newyork"),
    ]
     var body: some View {
        VStack {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 14,weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12,weight: .semibold))
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
                                    .frame(width: 125, height: 125)
                                    .cornerRadius(4)
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 6)

                                
                                Text(Catgre2.name)
                                    .font(.system(size: 12,weight: .semibold))
                                    .padding(.horizontal, 12)
                                
                                Text(Catgre2.contre)
                                    .font(.system(size: 12,weight: .semibold))
                                    .padding(.horizontal,12)
                                    .padding(.bottom,8)
                                    
                                

                            }.foregroundColor(Color.gray)
                        })
                        .asTile()
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}


struct PopularDestionsView1_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.orange
        PopularDestionsView1()
        }
    }
}
