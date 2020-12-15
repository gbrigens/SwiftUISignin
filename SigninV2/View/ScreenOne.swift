//
//  ScreenOne.swift
//  SigninV2
//
//  Created by Гералд Бирген on 27.09.2020.
//

import SwiftUI

struct ScreenOne: View {
    //MARK:- PROPERTIES
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            
            // Welcome
            VStack(spacing:15){
                Text("Hello There")
                    .modifier(CustomTextM(fontName: "RobotoSlab-Bold", fontSize: 34, fontColor: Color("pink")))
                Text("Please sign in to continue.")
                    .modifier(CustomTextM(fontName: "RobotoSlab-Light", fontSize: 18, fontColor: Color.primary))
            }
            .padding(.top,45)
            Spacer()
            
            // Form
            VStack(spacing: 15){
                VStack(alignment: .center, spacing: 30){
                    VStack(alignment: .center) {
                        CustomTextfield(placeholder:
                                            Text("Username"),
                                        fontName: "RobotoSlab-Light",
                                        fontSize: 18,
                                        fontColor: Color.gray,
                                        username: $username)
                        Divider()
                            .background(Color.gray)
                    }
                    VStack(alignment: .center) {
                        CustomSecureField(placeholder:
                                            Text("Password"),
                                          fontName: "RobotoSlab-Light",
                                          fontSize: 18,
                                          fontColor: Color.gray,
                                          password: $password)
                        Divider()
                            .background(Color.gray)
                    }
                }
                HStack{
                    Spacer()
                    Button(action: {}){
                        Text("Forgot Pass?")
                            .modifier(CustomTextM(fontName: "RobotoSlab-Light", fontSize: 14, fontColor: Color.gray))
                    }
                }
            }
            .padding(.horizontal,35)
            
            //Button
            ZStack{
                Circle()
                    .foregroundColor(Color("pink"))
                    .frame(width: 60, height: 60)
                Image(systemName: "arrow.right")
                    .font(.title)
                    .foregroundColor(Color.white)
                
            }
            .padding(.top,35)
            Spacer()
            //SignUp
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Sign up, if you’re new!")
                    .modifier(CustomTextM(fontName: "RobotoSlab-Light", fontSize: 18, fontColor: Color.primary))
            }
            .padding(.bottom,30)
        }
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne()
    }
}

struct CustomTextM: ViewModifier {
    //MARK:- PROPERTIES
    let fontName: String
    let fontSize: CGFloat
    let fontColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: fontSize))
            .foregroundColor(fontColor)
    }
}
