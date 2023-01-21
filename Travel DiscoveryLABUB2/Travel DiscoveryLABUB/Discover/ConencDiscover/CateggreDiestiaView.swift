//
//  CateggreDiestiaView.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 07.06.2022.
//

import SwiftUI
import SDWebImageSwiftUI




struct CateggreDiestiaView: View {
    
    @ObservedObject var vm = CategoryDetailsViewModel()
    
    var body: some View {
        ZStack {
            if vm.isLoading {
                VStack {
                    ActivityIndicatorView()
                    Text("Loading..")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold))
                }
                .padding()
                .background(Color.black)
                .cornerRadius(8)
                
            } else {
                ZStack {
                    Text(vm.errorMessage)
                    ScrollView {
                        ForEach(vm.places, id: \.self) { place in
                            VStack(alignment: .leading, spacing: 0) {
                                WebImage(url: URL(string: place.thumbnail))
//                                Image("art1")
                                    .resizable()
                                    .scaledToFill()
                                Text(place.name)
                                    .font(.system(size: 12, weight: .semibold))
                                    .padding()
                                    
                            }.asTile()
                            .padding()
                        }
                    }
                }
                
            }
        }
        .navigationBarTitle("Category", displayMode: .inline)
    }
}

struct CateggreDiestiaView_Previews: PreviewProvider {
    static var previews: some View {
        CateggreDiestiaView()
    }
}
