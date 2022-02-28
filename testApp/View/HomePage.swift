//This is the page for the 

import SwiftUI

struct homePage: View {
    
    @State private var searchText = ""
    var body: some View {
        
        NavigationView {
            Text("Searching for \(searchText)")
                .searchable(text: $searchText)
                .navigationTitle("Searchable Example")
            }
        
        VStack{
        
            //Categories Title
            VStack
            {
                Text("Categories: ")
                    .frame(maxWidth: .infinity,
                        alignment: .topLeading)
                    .font(.system(size: 50, weight: .bold))
                    .padding()
            }
            ScrollView
            {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 170), spacing: 0)], spacing: 30)
                {
                    ForEach(0..<10)
                    { index in
                        Card(text: "Card# \(index)")
                    }
                }.padding()
            }
        }
    }
}
    
    
    
    struct HomePage: PreviewProvider {
        static var previews: some View {
            homePage()
        }
    }





