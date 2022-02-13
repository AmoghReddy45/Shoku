//
//  Home.swift
//  testApp
//
//  Created by Amogh Reddy on 2/11/22.
// This comment is on Amogh branch to start

import SwiftUI

struct Home: View {
   
    @State var showSignUp = false
    
    
    //This stuff is for the commitho
    
    var body: some View {
        ZStack{
            HStack{
            Text("SHO")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color("dark"))
                    .frame(width: 130, height: 780, alignment: .topTrailing)
                    .padding(.horizontal, 15)

                
            Text("KU")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color("orange"))
                    .frame(width: 130, height: 780, alignment: .topLeading)
                    .padding(.horizontal, -25)
            }
            
            ZStack{
                if showSignUp{
                    SignUp()
                        .transition(.move(edge: .trailing))
                }
                else{
                    Login()
                        .transition(.move(edge: .trailing))
                }
                
            }
        
        .frame(maxHeight: 500, alignment: .topTrailing)
        
    }
        .overlay(
        
            HStack{
                
                Text(showSignUp ? "Already Member?" : "New Member?")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Button(action: {
                    withAnimation{
                        showSignUp.toggle()
                    }
                }, label: {
                    Text(showSignUp ? "Sign In" : "Sign Up")
                        .fontWeight(.bold)
                        .foregroundColor(Color("orange"))
                })
            }
                .padding(.bottom,getSafeArea().bottom == 0 ? 15 : 0)
                ,alignment: .bottom
        )
        .background(
            
            HStack{
                
                Text("By creating an account, you agree to our terms of service")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.gray)
                    .frame(alignment: .center)
                    
            }
                .offset(y: getSafeArea().bottom)
            
            ,alignment: .bottom
        )
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View{
    
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
    
    func getSafeArea()->UIEdgeInsets{
        return UIApplication.shared.windows.first?.safeAreaInsets
        ?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}


