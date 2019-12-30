//
//  DesignThree.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignThree : View {
    
    var body: some View {
        VStack{
            Spacer()
            WelcomeView()
            Text("Or")
                .font(.custom("WorkSans-Regular", size: 16)).fontWeight(.bold)
                .padding(.vertical)
            FormView()
            Spacer()
            BottomView()
        }
    }
}

struct WelcomeView: View {
    var body: some View {
        VStack{
            Text("Welcome Back").font(.custom("WorkSans-Bold", size: 34)).fontWeight(.bold)
            Image("designThreeWave").aspectRatio(contentMode: .fit).padding(.bottom, 30)
            Button(action: {
                //
            }) {
                Text("login with Facebook")
                    .font(.custom("WorkSans-Bold", size: 18))
                    .foregroundColor(.white)
                    .background(Rectangle().frame(width:315,height: 56).cornerRadius(30).accentColor(Color.init(red: 66/255, green: 84/255, blue: 143/255, opacity: 1)))
            }
        }.padding(.bottom, 40)
    }
}

struct FormView: View {
    @EnvironmentObject var user: User
    var body: some View {
        VStack(){
            TextField("Username", text: $user.userName)
                .font(.custom("WorkSans-Regular", size: 18)).foregroundColor(Color.secondary)
            Divider().padding(.bottom,20)
            SecureField("Password", text: $user.password).font(.custom("WorkSans-Regular", size: 18)).foregroundColor(Color.secondary)
            Rectangle().frame(width:1)
            Button(action: {
                print("You've entered  for username \(self.user.userName) and \(self.user.password) for password")
            }) {
                Text("Log In")
                    .font(Font.custom("WorkSans-Bold", size: 18))
                    .foregroundColor(.black)
//                    .background(Rectangle().frame(width:315,height: 56).accentColor(Color.clear).border(Color.gray, cornerRadius: 30))
                    .frame(width: 200, height: 50, alignment: .center)
            }.padding(.top,40)
            Button(action: {
                print("Forgot pressed")
            }) {
                Text("Forgotten your password?")
                    .font(Font.custom("WorkSans-Regular", size: 14))
//                    .fontWeight(.light)
//                    .foregroundColor(.secondary)
//                    .padding(.top,10)
            }
        }
        .padding(.horizontal, 44.0)
    }
}

struct BottomView: View {
    let userData = User()
    var body: some View {
        HStack{
            Text("Haven't registed yet?")
                .font(.custom("WorkSans-Regular", size: 18))
                .foregroundColor(.secondary)
            
            Button(action: {
                print("signup pressed")
            }) {
                Text("Join now.")
                    .font(Font.custom("WorkSans-Bold", size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
        }.padding(.bottom,15)
    }
}

#if DEBUG
struct DesignThree_Previews : PreviewProvider {
    static var previews: some View {
        DesignThree().environmentObject(userData)
    }
}
#endif
