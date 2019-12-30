//
//  DesignTwo.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignTwo : View {
    var body: some View {
        VStack{
            Spacer()
            Image("designTwoLogo")
            Spacer()
            DesignTwoFormView()
            Spacer()
            FooterView()
        }
        .background(Image("designTwoBg").resizable()).edgesIgnoringSafeArea(.all)
    }
}


#if DEBUG
struct DesignTwo_Previews : PreviewProvider {
    static var previews: some View {
        DesignTwo().environmentObject(userData)
    }
}
#endif

struct FooterView : View {
    var body: some View {
        VStack {
            Text("Need an account?")
                .font(.custom("OpenSans-Regular", size: 16))
                .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.3))
                .padding(.bottom,30)
            Button(action: {
                print("signup pressed")
            }) {
                Text("SIGN UP")
                    .font(Font.custom("OpenSans-Bold", size: 14))
                    .foregroundColor(.white)
                    .background(Rectangle().frame(width:215,height: 60).cornerRadius(10).accentColor(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.1)))
            }
        }.padding(.bottom, 50)
    }
}

struct DesignTwoFormView : View {
    @EnvironmentObject var user: User
    var body: some View {
        VStack{
            TextField("Username", text: $user.userName).font(.custom("RobotoSlab-light", size: 18)).foregroundColor(Color.white)
            Rectangle().frame(height:1).foregroundColor(Color.white).padding(.bottom,20)
            SecureField("Password", text: $user.password).font(.custom("RobotoSlab-light", size: 18)).foregroundColor(Color.white)
            Rectangle().frame(height:1).foregroundColor(Color.white)
            HStack {
                Button(action: {
                    print("Forgot pressed")
                }) {
                    Text("Request new password").font(.custom("OpenSans-Regular", size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.3))
                }
                Spacer()
            }
            Button(action: {
                print("You've entered  for username \(self.user.userName) and \(self.user.password) for password")
            }) {
                Text("LOGIN")
                    .font(.custom("OpenSans-Bold", size: 14))
                    .foregroundColor(.black)
                    .background(Rectangle().frame(width:295,height: 60).cornerRadius(10).accentColor(Color.white))
            }.padding(.top,40)
        }
        .padding(.horizontal, 56.0)
    }
}
