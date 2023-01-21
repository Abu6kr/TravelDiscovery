//
//  TesteView.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 08.07.2022.
//

import SwiftUI

struct DescView: View {
var desc = "Use this to..."
    
init(_ desc: String) {
        self.desc = desc
     }
var body: some View {
    Text(desc)
  }
}
struct TesteView: View {
    var title = "title"
    var subtitle = "subtitle"
    var desc = "Use this to..."
    
    init(_ title:String,subtitle:String,desc:String) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
    
}

    var body: some View {
        VStack {
            if !title.isEmpty {
                Text(title)
                    .font(.largeTitle)
            }
            Text(subtitle)
                .foregroundColor(Color.red)
            DescView(desc)
                .frame(maxWidth:.infinity)
                .padding()
                .background(Color.orange)
                .foregroundColor(Color.white)
        }
    }
}




                     

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView("title", subtitle: "subtitle", desc: "Use this to...")
    }
    
}
