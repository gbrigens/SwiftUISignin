//
//  DesignFour.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/23/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct DesignFour : View {
    var body: some View {
        VStack{
            TopNavFour()
            
            }.background(Image("designFourBg")
                .resizable()
                .scaledToFill()
            ).edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct DesignFour_Previews : PreviewProvider {
    static var previews: some View {
        DesignFour().environmentObject(userData)
    }
}
#endif

struct TopNavFour : View {
    var body: some View {
        return VStack(alignment: .leading, spacing: 30){
            Image("designFourLogo")
            Text("Logo to Continue...")
        }
    }
}

struct FormViewFour : View {
    @EnvironmentObject var user: User
    var body: some View {
        return VStack(alignment: .leading){
            Text("Username")
            TextField($user.userName).textFieldStyle(.roundedBorder)
            Text("Password")
            SecureField($user.password).textFieldStyle(.roundedBorder)
            
            Button(action: {
                //Code
            }) {
                Text("Forgot Password?")
            }
            
            Button(action: {
                //Code
            }) {
                Text("LOGIN")
            }
        }
    }
}

