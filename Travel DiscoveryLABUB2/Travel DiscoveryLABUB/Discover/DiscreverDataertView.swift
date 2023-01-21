//
//  DiscreverDataertView.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 06.06.2022.
//

import SwiftUI

struct DiscreverDataertView: View {
    let Catgres:[Catgre1] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Evnts", imageName: "livephoto.play"),
        .init(name: "Food", imageName: "heart.fill"),
        .init(name: "History", imageName: "clock.fill")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .top, spacing: 14) {
                ForEach(Catgres, id: \.self) { Catgre in
                    NavigationLink(destination: {
                       CateggreDiestiaView()
                    }, label: {
                        VStack (spacing: 8){
                            Image(systemName: Catgre.imageName)
                                .font(.system(size: 20))
                                .foregroundColor(Color.orange)
                                .frame(width: 64, height: 64)
                                .background(Color.white)
                                .cornerRadius(64)
    //                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            Text(Catgre.name)
                                .font(.system(size: 12,weight: .semibold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                        }.frame(width: 68)
                    })
                }
            }.padding()
        }
    }
}



struct DiscreverDataertView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.orange
            DiscreverDataertView()

        }
    }
}
