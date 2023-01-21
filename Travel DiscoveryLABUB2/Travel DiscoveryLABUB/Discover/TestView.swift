//
//  TestView.swift
//  Travel DiscoveryLABUB
//
//  Created by abo bkr on 10.07.2022.
//

//import SwiftUI
//
////Model
//struct BookModel: Identifiable {
//    var id = UUID()
//    var name = ""
//}
//
////viewModel
//class BookViewModel: ObservableObject {
//    @Published var books = [BookModel]()
//    
//    func fetch() {
//    books =
//    [BookModel(name: "SwiftUI Views"),
//    BookModel(name: "SwiftUI Animations"),
//    BookModel(name: "Data in SwiftUI"),
//    BookModel(name: "Combine Reference"),
//    BookModel(name:  "This New Book")
//    ]
// }
//}
//
//
//struct TestView: View {
//    @StateObject var vm = BookViewModel()
//    
//    var body: some View {
//        List(vm.books) { book in
//            HStack {
//                Image(systemName: "book")
//                Text(book.name)
//            }
//        }
//        .onAppear(){
//        vm.fetch()
//      }
//    }
//}
//
//
//struct TestView_Previews: PreviewProvider {
//    static var previews: some View {
//        TestView()
//    }
//}
//
