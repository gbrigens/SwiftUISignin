//
//  DesignFive.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 12/30/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignFive: View {
    //MARK: - Properties
    @ObservedObject var keyboardHandler: KeyboardFollower
    
    @State private var username = ""
    @State private var password = ""
    
    init(keyboardHandler: KeyboardFollower) {
        self.keyboardHandler = keyboardHandler
    }
    
    var body: some View {
        ZStack{
            // Background
            Color(#colorLiteral(red: 0, green: 0.5647058824, blue: 0.862745098, alpha: 1))
            VStack{
                //Logo
                Image("designFiveLogo")
                    .padding(.top,60)
                Spacer()
                // Form
                VStack (alignment: .center, spacing: 15) {
                    VStack(alignment: .center, spacing: 5) {
                        VStack(alignment: .center, spacing: 20){
                            CustomTextField(
                                placeholder: Text("Username")
                                    .foregroundColor(.white),
                                username: $username)
                                .multilineTextAlignment(.center)
                                .modifier(CustomTextFieldBorders())
                            
                            CustomSecureField(
                                placeholder: Text("Password").foregroundColor(.white),
                                password: $password)
                                .multilineTextAlignment(.center)
                                .modifier(CustomTextFieldBorders())
                        }
                        .padding(.horizontal,40)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Forgot Password?")
                                .scaledFont(name: "Oxygen-Regular", size: 18)
                                .foregroundColor(Color.white)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("LOGIN")
                            .scaledFont(name: "Oxygen-Bold", size: 18)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6196078431, blue: 0.9333333333, alpha: 1)))
                            .frame(width:300,height: 60)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom,keyboardHandler.keyboardHeight)
                Spacer()
                // Footer
                VStack(alignment: .center, spacing: 8){
                    Text("Don't have an account?")
                        .scaledFont(name: "Oxygen-Regular", size: 18)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Sign Up")
                            .scaledFont(name: "Oxygen-Bold", size: 18)
                    }
                }
                .foregroundColor(Color.white)
                .padding(.bottom,15)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct CustomTextFieldBorders: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .modifier(textFieldModifier())
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white,lineWidth: 1))
    }
}

struct DesignFive_Previews: PreviewProvider {
    static var previews: some View {
        DesignFive(keyboardHandler: KeyboardFollower())
    }
}
