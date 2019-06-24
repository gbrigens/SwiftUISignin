//
//  DesignFive.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/23/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignFive : View {
    var body: some View {
        VStack {
            Spacer()
            Image("designFiveLogo")
            Spacer()
            ExtractedView()
            Spacer()
            FooterFiveView().padding(.bottom,30)
            }.background(Color(red: 0/255, green: 150/255, blue: 232/255, opacity: 1)).edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct DesignFive_Previews : PreviewProvider {
    static var previews: some View {
        DesignFive().environmentObject(userData)
    }
}
#endif

struct ExtractedView : View {
    @EnvironmentObject var user: User
    var body: some View {
        VStack{
            TextField($user.userName, placeholder: Text("Username")).textFieldStyle(.roundedBorder)
            SecureField($user.userName, placeholder: Text("Password")).frame(width:295,height: 60).background(Color(red: 0/255, green: 150/255, blue: 232/255, opacity: 1)).cornerRadius(10).border(Color.gray)
            Button(action: {
                //
            }) {
                Text("Forgot Password?").fontWeight(.light).color(.white)
            }.padding()
            Button(action: {
                //
            }) {
                Text("SIGN IN").fontWeight(.bold).color(Color(red: 0/255, green: 150/255, blue: 232/255, opacity: 1)).background(Rectangle().frame(width: 300, height: 60).cornerRadius(10).accentColor(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1)))
                
            }
        }
    }
}

struct FooterFiveView: View {
    var body: some View {
        VStack{
            Text("Don't have an account?").fontWeight(.light).color(.white)
            Button(action: {
                //Code
            }) {
                Text("Sign Up").fontWeight(.bold).color(.white)
            }
        }
    }
}
