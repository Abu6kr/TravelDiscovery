//
//  CategoryDetailsViewModel.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 28.06.2022.
//

import SwiftUI
import SDWebImageSwiftUI

//
class CategoryDetailsViewModel: ObservableObject {
    
    @Published var isLoading = true
    @Published var places = [Place]()
    
    @Published var errorMessage = ""
    
    init(name: String) {
        // real network code
        
        let urlString = "https://travel.letsbuildthatapp.com/travel_discovery/category?name=\(name.lowercased())".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        guard let url = URL(string: urlString) else {
            self.isLoading = false
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                
                // you want to check resp statusCode and err
                if let statusCode = (resp as? HTTPURLResponse)?.statusCode, statusCode >= 400 {
                    self.isLoading = false
                    self.errorMessage = "Bad status: \(statusCode)"
                    return
                }
                
                guard let data = data else { return }
                
                do {
                    self.places = try JSONDecoder().decode([Place].self, from: data)
                } catch {
                    print("Failed to decode JSON:", error)
                    self.errorMessage = error.localizedDescription
                }
                
                self.isLoading = false
            }
        }.resume() // make sure to have resume
    }
}

struct CategoryDetailsView: View {
    @State private var  isLoding = false
    private let name: String
    @ObservedObject private var vm: CategoryDetailsViewModel
    
    init(name: String) {
        print("Loaded CategoryDetails View and making a network request for \(name)")
        self.name = name
        self.vm = .init(name: name)
    }
    
//    let name: String
//    @ObservedObject var vm = CategoryDetailsViewModel()
    @State var isAnmsin = true

    var body: some View {
        ZStack {
            if vm.isLoading {
                VStack {
                    ActivityIndicatorView()
                        .redacted(reason: .placeholder)
//                    Text("Loading..")
//                        .foregroundColor(.white)
//                        .font(.system(size: 16, weight: .semibold))
                }
                .padding()
//                .background(Color.black)
                .cornerRadius(8)
                
            } else {
                ZStack {
                    
                    if !vm.errorMessage.isEmpty {
                        VStack(spacing: 12) {
                            Image(systemName: "xmark.octagon.fill")
                                .font(.system(size: 64, weight: .semibold))
                                .foregroundColor(.red)
                            Text(vm.errorMessage)
                        }
                    }
                    
                    ScrollView {
                        ForEach(vm.places, id: \.self) { place in
                            VStack(alignment: .leading, spacing: 0) {
//                                KFImage(URL(string: place.thumbnail))
                                WebImage(url: URL(string: place.thumbnail))
                                    .resizable()
                                    .indicator(.activity) // Activity Indicator
                                       .transition(.fade(duration: 0.5)) // Fade Transition with duration
                                    .scaledToFill()
                                
                                Text(place.name)
                                    .font(.system(size: 12, weight: .semibold))
                                    .padding()
                                    
                            }.asTile()
                            .padding()
                        }
                        .redacted(reason: isAnmsin ?  .placeholder : .init())
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isAnmsin = false
                            }
                        }
                    }
                    

                }
                
            }
        }
        .navigationBarTitle(name, displayMode: .inline)
    }

 }

struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CategoryDetailsView(name: "Food")
        }
    }
}


