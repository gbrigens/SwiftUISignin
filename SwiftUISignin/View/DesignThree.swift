//
//  DesignThree.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignThree : View {
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            //Logo
            VStack(alignment: .center, spacing:30) {
                VStack(alignment: .center, spacing: 0) {
                    Text("Welcome Back")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    Image("designThreeWave")
                }
                
                VStack(alignment: .center, spacing: 40) {
                    Text("Login with Facebook")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .padding(.leading,20)
                        .frame(width: 315, height: 56, alignment: .leading)
                        .background(Color(#colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.5607843137, alpha: 1)))
                        .clipShape(Capsule())
                    
                    Text("Or")
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                }
            }
            .padding(.top,40)
            .padding(.bottom,40)
            
            
            //Form
            VStack(spacing:60) {
                VStack(alignment:.leading, spacing: 30){
                    VStack{
                        CustomTextField(
                            placeholder: Text("Email address")
                                .fontWeight(.medium),
                            username: $username)
                        
                        Divider()
                            .background(Color.gray)
                    }
                    VStack{
                        CustomSecureField(
                            placeholder: Text("Password")
                                .fontWeight(.medium),
                            password: $password)
                        Divider()
                            .background(Color.gray)
                    }
                }
                .padding(.horizontal,35)
                
                //Button
                VStack(alignment: .center, spacing: 10) {
                    Button(action: {
                        print("Email: \(self.$username) Password: \(self.password)")
                    }) {
                        Text("Login")
                            .fontWeight(.bold)
                            .padding(.leading,20)
                            .foregroundColor(Color.primary)
                            .frame(width: 315, height: 56, alignment: .leading).overlay(
                                RoundedRectangle(cornerRadius: 30
                                ).strokeBorder().foregroundColor(Color.gray)
                                
                        )
                        
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Forgotten your password?")
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                }
            }
            
            //Footer
            Spacer()
            HStack{
                Text("Haven’t registered yet?")
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Join now.")
                        .fontWeight(.bold)
                        .foregroundColor(Color.primary)
                }
            }
            .padding(.bottom)
        }
    }
}

#if DEBUG
struct DesignThree_Previews : PreviewProvider {
    static var previews: some View {
        DesignThree()
        //.environmentObject(userData)
    }
}
#endif
