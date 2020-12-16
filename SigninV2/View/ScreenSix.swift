//
//  ScreenSix.swift
//  SigninV2
//
//  Created by Гералд Бирген on 16.12.2020.
//

import SwiftUI

struct ScreenSix: View {
    //MARK: - PROPERTIES
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            //  BG
            Image("bg-6")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                //  logo
                Image("logo-6")
                    .resizable()
                    .frame(width: 166.14, height: 26)
                    .padding(.top, 50)
                Spacer()
                //  Form
                VStack(spacing:0){
                    Label {
                        CustomTextfield(placeholder: Text("Username"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, foregroundColor: Color.white, username: $username)
                    } icon: {
                        Image(systemName: "person")
                            .frame(width: 14, height: 14)
                            .padding(.leading)
                    }.frame(height: 45)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                    
                    Label {
                        CustomSecureField(placeholder: Text("Password"), fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white, password: $password)
                    } icon: {
                        Image(systemName: "lock")
                            .frame(width: 14, height: 14)
                            .padding(.leading)
                    }.frame(height: 45)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 0.5).frame(height: 45))
                    
                }
                
                //  Button SignIn
                Button(action: {}){
                    Text("SIGN IN")
                        .modifier(CustomTextM(fontName: "NunitoSans-Bold", fontSize: 16, fontColor: Color.black))
                }
                .modifier(SFButton())
                .background(Color.white)
                .padding(.vertical,30)
                
                //  Forgot Password
                Text("Forgot Password")
                    .modifier(CustomTextM(fontName: "NunitoSans-Regular", fontSize: 16, fontColor: Color.white))
                    .padding(.bottom,30)
                    
            
            }
            .foregroundColor(.white)
            .padding(.horizontal,20)
            
        }
    }
}

struct ScreenSix_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSix()
    }
}
