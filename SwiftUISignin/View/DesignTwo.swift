//
//  DesignTwo.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignTwo : View {
    //MARK: - Properties
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        ZStack{
            //Background
            Image("designTwoBg")
            
            VStack(alignment: .center, spacing: 0){
                Spacer()
                //Logo
                Image("designTwoLogo")
                    .resizable()
                    .frame(width: 90, height: 90, alignment: .center)
                    .padding(.top,30)
                Spacer()
                
                //Form
                VStack(alignment: .center, spacing: 30) {
                    VStack(alignment: .center, spacing: 10) {
                        VStack(alignment: .center, spacing: 30){
                            VStack(alignment: .center) {
                                CustomTextField(
                                    placeholder: Text("Username").foregroundColor(Color.white),
                                    username: $username)
                                Divider()
                                    .background(Color.white)
                            }
                            VStack(alignment: .leading) {
                                CustomSecureField(
                                    placeholder: Text("Password").foregroundColor(Color.white),
                                    password: $password)
                                Divider()
                                    .background(Color.white)
                            }
                        }
                        HStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Request new password.")
                                    .scaledFont(name: "WorkSans-Regular", size: 14)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)))
                            }
                            Spacer()
                        }
                    }
                    .padding(.horizontal,38)
                    
                    // Button
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("LOGIN")
                        .scaledFont(name: "OpenSans-Bold", size: 14)
                            .foregroundColor(Color.black)
                            .frame(width:295,height: 60)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                    }
                }
                Spacer()
                //Footer
                VStack(alignment: .center, spacing: 15) {
                    Text("Need an account?")
                        .scaledFont(name: "WorkSans-Regular", size: 14)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)))
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("SIGN UP")
                            .scaledFont(name: "OpenSans-Bold", size: 14)
                            .foregroundColor(Color.white)
                            .frame(width:215,height: 60)
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.15)))
                        .cornerRadius(10)
                    }
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


#if DEBUG
struct DesignTwo_Previews : PreviewProvider {
    static var previews: some View {
        DesignTwo()
    }
}
#endif

