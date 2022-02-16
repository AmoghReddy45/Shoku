//
//  Login.swift
//  testApp
//
//  Created by Amogh Reddy on 2/13/22.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            //.frame(maxHeight: getRect().width)
            VStack{
            
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("dark"))
            //Letter Spacing...
                .kerning(2.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            //Email and Password...
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text("USERNAME / EMAIL")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.gray)
                
                TextField("iampratham@gmail.com", text: $email)
                //Increasing font size and text color
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                Divider()
            })
                .padding(.top,25)
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text("PASSWORD")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.gray)
                
                SecureField("**********", text: $password)
                //Increasing font size and text color
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                    .autocapitalization(.none)
                
                Divider()
            })
                .padding(.top,20)
            
            //Forget Password...
            Button(action: {}, label: {
                Text("Forgot Password?")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.gray)
            })
            
            //Reduce hstack and spacers
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top,10)
            
            Button(action: {}, label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("dark"))
                    .clipShape(Circle())
                //Shadow
                    .shadow(color: Color("orange").opacity(0.4), radius: 5, x: 0, y: 0)
            })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,10)
        }
            .padding()
            .padding(.top, -6)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
