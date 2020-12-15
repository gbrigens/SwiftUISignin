//
//  ScreenThree.swift
//  SigninV2
//
//  Created by Гералд Бирген on 28.09.2020.
//

import SwiftUI

struct ScreenThree: View {
    //MARK:- PROPERTIES
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            //Wellcome
            VStack(spacing:2){
                Text("Welcome Back")
                    .modifier(CustomTextM(fontName: "WorkSans-Black", fontSize: 38, fontColor: Color.primary))
                Image("wave")
                    .resizable()
                    .frame(width: 73.46, height: 4)
            }
            .padding(.top,35)
            
            Spacer().frame(height:35)
            VStack(spacing: 25){
                // Facebook
                HStack{
                    Text("Login with Facebook")
                        .modifier(CustomTextM(fontName: "WorkSans-Bold", fontSize: 16, fontColor: Color.white))
                        .padding(.leading,20)
                    Spacer()
                }
                .modifier(ButtonStyle2())
                .background(Color("facebook"))
                .clipShape(Capsule())
                .onTapGesture {
                    print("LogIn with Facebook pressed")
                }
                
                //Or
                Text("Or")
                    .modifier(CustomTextM(fontName: "WorkSans-Regular", fontSize: 16, fontColor: Color.primary))
                
                // Form
                VStack{
                    VStack(alignment: .center, spacing: 30){
                        VStack(alignment: .center) {
                            CustomTextfield(placeholder:
                                                Text("Email Address"),
                                            fontName: "OpenSans-Regular",
                                            fontSize: 18,
                                            fontColor: Color.primary.opacity(0.7),
                                            username: $username)
                            Divider()
                                .background(Color.primary)
                        }
                        VStack(alignment: .center) {
                            CustomSecureField(placeholder:
                                                Text("Password"),
                                              fontName: "OpenSans-Regular",
                                              fontSize: 18,
                                              fontColor: Color.primary.opacity(0.7),
                                              password: $password)
                            Divider()
                                .background(Color.primary)
                        }
                    }
                    Spacer().frame(height:45)
                    //log in
                    VStack(spacing: 20){
                        HStack{
                            Text("Login")
                                .modifier(CustomTextM(fontName: "WorkSans-Bold", fontSize: 16, fontColor: Color.primary))
                                .padding(.leading,20)
                            Spacer()
                        }
                        .modifier(ButtonStyle2())
                        .overlay(
                            RoundedRectangle(cornerRadius: 35)
                                .strokeBorder().foregroundColor(Color.gray)
                                .clipShape(Capsule()))
                        .onTapGesture {
                            print("LogIn pressed")
                        }
                        
                        VStack{
                            Button(action: {}){
                                Text("Forgotten your password?")
                                    .modifier(CustomTextM(fontName: "OpenSans-Regular", fontSize: 14, fontColor: Color.gray))
                            }
                        }
                    }
                }
            }
            
            Spacer()
            // Sign Up
            HStack{
                Text("Haven’t registered yet?")
                    .modifier(CustomTextM(fontName: "WorkSans-Regular", fontSize: 18, fontColor: Color.gray))
                Button(action: {}){
                    Text("Join now.")
                        .modifier(CustomTextM(fontName: "WorkSans-Bold", fontSize: 18, fontColor: Color.primary))
                }
                
            }
            .padding(.bottom,20)
        }
        .padding(.horizontal)
    }
}

struct ScreenThree_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThree()
    }
}

struct ButtonStyle2: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .frame(height: 56, alignment: .leading)
    }
}
