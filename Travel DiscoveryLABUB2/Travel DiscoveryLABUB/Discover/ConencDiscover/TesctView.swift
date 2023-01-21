//
//  TesctView.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 08.06.2022.
//

import SwiftUI

struct TesctView: View {
    let TectModel: [tetct1] = [
            .init(name: "All"),
            .init(name: "Today"),
            .init(name: "More"),
            .init(name: "Here"),
            .init(name: "Open")
        
        ]

    
    var body: some View {
        ScrollView {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.turn.up.backward.2")
                })
                Spacer()
                Image(systemName: "pencil.circle")
                Image(systemName: "text.justify")
            }.padding()
            
            HStack {
                VStack(alignment:.leading){
                    Text("Your")
                        .font(.system(size: 33))
                    Text("Bookshelf.")
                        .font(.system(size: 40,weight: .semibold))
                }
                Spacer()
            }
            .padding()
            HStack(spacing:55) {
                HStack(spacing:12) {
                    VStack(spacing:12) {
                        Text("Studay here todat")
                        Text("team 2:15 am")
                        
                    }
                }.padding()
                .foregroundColor(Color.white)
                    Image("book")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                        .shadow(color: .init(.sRGB, white: 0.8,opacity: 1), radius: 4, x: 0.0, y: 2)
                }.padding()
                .frame(width: 340, height: 130)
                .background(Color.green)
                .cornerRadius(20)
            
            ScrollView(.horizontal,showsIndicators: false) {
                Button(action: {}, label: {
                    HStack(spacing:40) {
                        ForEach(TectModel,id: \.self) { moretect in
                            Text(moretect.name)
                        }.foregroundColor(Color.gray)
                        
                    }
                })
                
            }.padding()
            ScrollView(showsIndicators: false) {
                Button(action: {}, label: {
                    VStack(spacing:40) {
                        ForEach(0..<5,id: \.self) { num in
                            HStack(spacing: 60) {
                                Image("book")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(12)
                                    .shadow(color: .init(.sRGB, white: 0.8,opacity: 1), radius: 4, x: 0.0, y: 2)
                                
                                VStack(spacing: 8) {
                                   Image(systemName: "cursorarrow.click.badge.clock")
                                        .foregroundColor(Color.black)
                                    
                                    VStack {
                                        Text("the mover")
                                        Text("12:00")
                                    }
                                }.padding()
                               

                            }.padding()
                            .frame(width: 340, height: 150)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .init(.sRGB, white: 0.8,opacity: 1), radius: 4, x: 0.0, y: 2)
                        }.foregroundColor(Color.gray)
                        
                    }
                })
            }

            Spacer()
        }

       
    }
}

struct TesctView_Previews: PreviewProvider {
    static var previews: some View {
        TesctView()
    }
}
