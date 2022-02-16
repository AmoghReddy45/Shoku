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
                    .frame(maxHeight: 780, alignment: .top)
                    .padding(.trailing, -4)
 
                
            Text("KU")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color("orange"))
                    .frame(maxHeight: 780, alignment: .top)
                    .padding(.leading, -4)
            }
            .frame(alignment: .center)
            
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
                .padding(.bottom,getSafeArea().bottom == 0 ? 30 : 0)
                ,alignment: .bottom
        )
        .background(
            
            VStack{
                
                Text("By creating an account, you agree to \n")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.gray)
                    .frame(alignment: .center)
                    //.padding(.top,)
                Text("our terms of service")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.gray)
                    .frame(alignment: .center)
                    .padding(.top,-25)
                    
            }
                .offset(y: (getSafeArea().bottom) + 10)
            
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


