//
//  ScreenFour.swift
//  SigninV2
//
//  Created by Гералд Бирген on 15.12.2020.
//

import SwiftUI

struct ScreenFour: View {
    //MARK: - PROPERTIES
    @State var username = "";
    @State var password = "";
    
    var body: some View {
        ZStack{
            Image("login-4")
                .resizable()
            
            VStack(alignment: .leading, spacing: 30){
                
                // LOGO & WELCOME
                VStack(alignment: .leading, spacing: 30){
                    Image("logo-4")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Login to Continue..")
                        .modifier(CustomTextM(fontName: "MavenPro-Regular", fontSize: 26, fontColor: Color.primary))
                }
                .padding(.top,55)
                
                // FORM
                VStack {
                    VStack(alignment: .leading){
                        VStack(spacing: 20) {
                            // Username
                            SFInputComponent(inputTitle: "Username", username: $username, isSecure: false)
                            // Password
                            VStack(spacing: 15){
                                SFInputComponent(inputTitle: "Password", username: $password, isSecure: true)
                                // Forgot pass
                                Text("Forgot Password?")
                                    .modifier(CustomTextM(fontName: "MavenPro-Medium", fontSize: 16, fontColor: Color.gray))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                        // Login btn
                        Button(action: {}){
                            Text("LOGIN")
                                .modifier(CustomTextM(fontName: "MavenPro-Bold", fontSize: 14, fontColor: Color.black))
                                .modifier(SFButton())
                                .background(Color("yellow"))
                                .cornerRadius(10)
                        }
                        .padding(.top,30)
                        
                    }
                    .padding(.horizontal,30)
                    .padding(.vertical,40)
                }
                .background(Color("card"))
                .cornerRadius(10)
                .padding(.top,20)
                .shadow(radius: 20.0)
                
                
                Spacer()
                // SIGN UP
                Button(action: {}) {
                    HStack{
                        Text("New?")
                        Text("Sign-up")
                            .modifier(CustomTextM(fontName: "MavenPro-Bold", fontSize: 18, fontColor: Color.primary))
                        Text("for a new account.")
                    }
                    .modifier(CustomTextM(fontName: "MavenPro-Regular", fontSize: 18, fontColor: Color.primary))
                    .foregroundColor(.primary)
                }
                .padding(.bottom, 30)
                
            }
            .offset(x:40)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ScreenFour_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFour()
    }
}


// Screen Four(SF) UI Componets

struct SFInputComponent: View {
    //    MARK:- PROPERTIES
    @State var inputTitle: String
    @Binding var username: String
    @State var isSecure: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text(inputTitle)
                .modifier(CustomTextM(fontName: "MavenPro-Medium", fontSize: 16, fontColor: Color.gray))
            Group{
                if !isSecure {
                    TextField("", text: $username)
                } else {
                    SecureField("", text: $username)
                }
            }.padding(10)
            .font(Font.system(size: 15, weight: .medium, design: .serif))
            .foregroundColor(.primary)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 0.5).frame(height: 45))
        }
    }
}

struct SFButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .frame(height: 56, alignment: .leading)
    }
}
