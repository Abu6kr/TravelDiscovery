//
//  DataDescteiView.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 08.06.2022.
//

import SwiftUI

struct DataDescteiView: View {
    var body: some View {
        ScrollView {
                ForEach(0..<5,id: \.self) { num in
                    VStack(alignment: .leading) {
                        Image("tapas")
                            .resizable()
                            .scaledToFill()
                        Text("food")
                            .font(.system(size: 17,weight: .semibold))
                            .padding()
                           
                    }.asTile()
                        .padding()
                        
                }
                
           
        }.navigationBarTitle("FoodHere", displayMode: .inline)
        
    }
}

struct DataDescteiView_Previews: PreviewProvider {
    static var previews: some View {
        DataDescteiView()
    }
}
