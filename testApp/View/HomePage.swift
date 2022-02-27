//This is the page for the 

import SwiftUI

struct homePage: View {
    
    var body: some View {
        VStack{
        
            VStack
            {
                Text("Categories: ")
                    .frame(maxWidth: .infinity,
                        alignment: .topLeading)
                    .font(.system(size: 50, weight: .bold))
                    .padding()
            }
            HStack(alignment: .top, content:
                {
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color.orange)
                            .frame(width: 170, height: 170,
                                   alignment: .leading)
                            .padding()
                    }).frame(
                        alignment:
                                    .topLeading)
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color.orange)
                            .frame(width: 170, height: 170,
                                   alignment: .leading)
                            .padding()
                    }).frame(
                                    alignment:
                                    .topTrailing)
                    
                })
            HStack(alignment: .top, content:
                {
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color.orange)
                            .frame(width: 170, height: 170,
                                   alignment: .leading)
                            .padding()
                    }).frame(
                        alignment:
                                    .topLeading)
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color.orange)
                            .frame(width: 170, height: 170,
                                   alignment: .leading)
                            .padding()
                    }).frame(
                        maxHeight: .infinity,
                                    alignment:
                                    .topTrailing)
                    
                })        }

    }
    
    struct HomePage: PreviewProvider {
        static var previews: some View {
            homePage()
        }
    }
}




