//
//  User.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI
import Combine

class User: ObservableObject {
    var didChange = PassthroughSubject<Void,Never>()
    
    var userName = "" {
        didSet{
            didChange.send(())
        }
    }
    
    var password = "" {
        didSet{
            didChange.send(())
        }
    }
}
