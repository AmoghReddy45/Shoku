//
//  Home.swift
//  testApp
//
//  Created by Amogh Reddy on 2/11/22.
//

import SwiftUI

struct Home: View {
    @State var email = ""
    @State var password = ""
    
    
    //This stuff is for the commitho
    
    var body: some View {
        ZStack{
            HStack{
            Text("SHO")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color("dark"))
                    .frame(width: 130, height: 750, alignment: .topTrailing)
                    .padding(.horizontal, 10)

                
            Text("KU")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color("orange"))
                    .frame(width: 130, height: 750, alignment: .topLeading)
                    .padding(.horizontal, -20)
            }
            
        VStack{
            //.frame(maxHeight: getRect().width)
            VStack{
            
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("dark"))
            //Letter Spacing...
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            //Email and Password...
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text("User Name")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("iampratham@gmail.com", text: $email)
                //Increasing font size and text color
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                Divider()
            })
                .padding(.top,25)
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("******", text: $password)
                //Increasing font size and text color
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                    .autocapitalization(.none)
                
                Divider()
            })
                .padding(.top,20)
            
            //Forget Password...
            Button(action: {}, label: {
                Text("Forgot Password?")
                    .fontWeight(.bold)
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
        .frame(height: 400, alignment: .topTrailing)
        
    }
        
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


