//
//  PopularDestionsView3.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 06.06.2022.
//

import SwiftUI

struct PopularDestionsView3: View {
    
    let Catgres3: [Catgre3] = [
        .init(name: "Japan's Finest Tapas", imageName: "tapas"),
        .init(name: "Bar & Grill", imageName: "bargrill")

    ]
    
         var body: some View {
        VStack{
            HStack{
                Text("Popular Place to eat")
                    .font(.system(size: 14,weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12,weight: .semibold))
            }.padding(.horizontal)
                .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:8){
                    ForEach(Catgres3, id: \.self) { Catgre3 in
                        HStack(spacing: 8) {
                            Image(Catgre3.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipped()
                                .cornerRadius(5)
                                .padding(.leading, 6)
                                .padding(.vertical, 6)
                            
                            VStack(alignment:.leading,spacing: 6) {
                                HStack {
                                    Text(Catgre3.name)
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    })
                                  
                                }
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.7 • Sushi • $$")
                                        .font(.system(size: 12, weight: .semibold))
                                }
                                
                                Text("Tokyo,Japan")
                                
                            }.font(.system(size: 12, weight: .semibold))
                            Spacer()

                        }
                            .frame(width: 240)
                            .asTile()
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularDestionsView3_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.orange
            PopularDestionsView3()
        }
    }
}
