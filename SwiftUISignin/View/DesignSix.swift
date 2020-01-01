//
//  DesignSix.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 12/31/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignSix: View {
    
    @State var username = ""
    @State var password = ""
    var body: some View {
        ZStack{
            Image("designSixBg")
                .resizable()
            
            VStack(alignment: .center, spacing: 0){
                Spacer()
                //Logo
                Image("designSixLogo")
                Spacer()
                //Form
                VStack(alignment: .center, spacing: 20) {
                    VStack(alignment: .center, spacing: 35) {
                        
                        //Text Fields
                        VStack(spacing:0){
                            HStack {
                                Image("username")
                                    .frame(width:14,height:14)
                                CustomTextField(
                                    placeholder: Text("Username").foregroundColor(.white),
                                    username: $username
                                )
                            }
                            .modifier(textFieldModifier())
                            .overlay(                                  Rectangle()
                            .stroke(Color.white,lineWidth: 1))
                            HStack {
                                Image("password")
                                    .frame(width: 11, height: 14, alignment: .center)
                                CustomSecureField(
                                    placeholder: Text("Password").foregroundColor(.white),
                                    password: $password
                                )
                            }
                            .modifier(textFieldModifier())
                            .overlay(                                  Rectangle()
                            .stroke(Color.white,lineWidth: 1))
                            
                        }
                        .padding(.horizontal,37)
                        
                        //SignIn Button
                        Button(action: {
                            //                            print("Username:\(self.$user), Password: \(self.$password)")
                        }) {
                            Text("SIGN IN")
                                .fontWeight(.medium) .foregroundColor(Color.black)
                                .frame(width:300,height:60)
                                .background(Color.white)
                        }
                    }
                    Button(action: {
                        //                        print("Username:\(self.user.userName), Password: \(self.user.password)")
                    }) {
                        Text("Forgot Password?")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                    }
                    .padding(.bottom,30)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DesignSix_Previews: PreviewProvider {
    static var previews: some View {
        DesignSix()
    }
}
