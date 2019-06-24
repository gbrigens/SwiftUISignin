//
//  ContentView.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct Home : View {
    var body: some View {
        DesignThree()
    }
}

#if DEBUG
let userData = User()
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Home().environmentObject(userData)
    }
}
#endif
