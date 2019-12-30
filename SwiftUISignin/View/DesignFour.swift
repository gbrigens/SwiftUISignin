//
//  DesignFourNew.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 12/30/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignFour: View {
    var body: some View {
        ZStack{
            //Background Image
            Image("designFourBg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                //Logo
                Spacer()
                VStack(alignment: .leading, spacing: 35){
                    Image("designFourLogo")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Login to Continue..")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.primary)
                }
                .offset(x:-48)
                .padding(.bottom,-40)
                
                //Card
                signUpCard()
                
                //Sign-Up
                Spacer()
                Button(action: {
                    print("Sign Up")
                }) {
                    HStack{
                        Text("New? Sign-up for a new account.")
                    }
                    
                }
                .foregroundColor(Color.primary)
                .padding(.leading,20)
                .padding(.bottom,5)
                .padding(.top,0)
                Spacer()
            }
        }
    }
}

//MARK: - Custom Modifier
//TextField
struct textFieldModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 5))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("ColorTextFieldGray"),lineWidth: 1))
    }
}

struct DesignFourNew_Previews: PreviewProvider {
    static var previews: some View {
        DesignFour().environmentObject(userData)
    }
}

struct signUpCard: View {
    //MARK: - Properties
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            VStack(alignment: .center, spacing: 15){
                VStack(alignment: .leading, spacing: 5) {
                    Text("Username")
                        .foregroundColor(Color.gray)
                    TextField("",text: $user.userName)
                        .modifier(textFieldModifiers())
                    
                }
                VStack(alignment: .leading, spacing: 5) {
                    Text("Password")
                        .foregroundColor(Color.gray)
                    SecureField("", text: $user.password)
                        .modifier(textFieldModifiers())
                }
            }
            .padding(.top,45)
            .padding(.leading,25)
            .padding(.bottom,20)
            
            HStack{
                Button(action: {
                    print("Forgot password")
                }) {
                    Text("Forgot Password?")
                        .foregroundColor(Color.gray)
                        .fontWeight(.thin)
                    
                }
                Spacer()
            }
            .padding(.leading,25)
            
            Button(action: {
                print("You've entered username: \(self.$user.userName) and password: \(self.$user.password)")
            }) {
                Text("LOGIN")
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
            }
            .frame(width: 315, height: 56, alignment: .center)
            .background(Color("ColorYellowD4"))
            .cornerRadius(10)
            .padding(.top,25)
            .padding(.bottom,25)
            
        }
        .frame(maxWidth: 425, alignment: .center)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparent"), radius: 50, x: 0, y: 0)
        .offset(x:70,y:75)
    }
}
