//
//  ScreenFive.swift
//  SigninV2
//
//  Created by Гералд Бирген on 16.12.2020.
//

import SwiftUI

struct ScreenFive: View {
    //MARK: - PROPERTIES
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            Color("blue")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30){
                // Logo
                Image("logo-5")
                    .resizable()
                    .frame(width: 104.93, height: 32.54)
                    .padding(.top,20)
                Spacer()
                
                // Form
                VStack(spacing: 25){
                    TextField("Username", text: $username)
                        .padding(10)
                        .font(Font.system(size: 15, weight: .medium, design: .serif))
                        .foregroundColor(.primary)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                        .preferredColorScheme(.dark)
                        .multilineTextAlignment(.center)
                    
                    VStack(spacing:10){
                        SecureField("Password", text: $username)
                            .padding(10)
                            .font(Font.system(size: 15, weight: .medium, design: .serif))
                            .foregroundColor(.primary)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                            .preferredColorScheme(.dark)
                            .multilineTextAlignment(.center)
                        
                        Button(action: {}){
                            Text("Forgot Password")
                                .modifier(CustomTextM(fontName: "Oxygen-Regular", fontSize: 16, fontColor: Color.white))
                        }
                    }
                }
                
                // SignIn
                Button(action: {}){
                    Text("SIGN IN")
                        .modifier(CustomTextM(fontName: "Oxygen-Bold", fontSize: 16, fontColor: Color("blue")))
                }
                .modifier(SFButton())
                .background(Color.white)
                .cornerRadius(10)
                
                Spacer()
                // SignUp
                VStack(spacing: 10){
                    Text("Don't have an account?")
                        .modifier(CustomTextM(fontName: "Oxygen-Regular", fontSize: 18, fontColor: Color.primary))
                    Button(action: {}){
                        Text("Sign Up")
                            .modifier(CustomTextM(fontName: "Oxygen-Bold", fontSize: 18, fontColor: Color.primary))
                    }
                }
            }
            .padding(.horizontal,30)
            .padding(.vertical, 25)
        }
    }
}

struct ScreenFive_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFive()
    }
}
