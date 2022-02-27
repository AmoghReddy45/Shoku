//
//  Card.swift
//  testApp
//
//  Created by Abhinav Varre on 2/27/22.
//

import SwiftUI


struct Card: View {
    var text: String
    var body: some View {
      
            Button(action: {}, label: {
                Text(text).background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(Color.orange)
                                            .frame(width: 170, height: 170)
                                            .padding())
                    .foregroundColor(Color.white)
                    .font(.system(size: 30, weight:  .medium))
                    .shadow(radius: 10)
                
                
            }).frame(width: 170, height: 170)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(text: "Chinese")
    }
}
