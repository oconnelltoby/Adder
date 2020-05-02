//
//  Box.swift
//  
//
//  Created by Toby O'Connell on 02/05/2020.
//

import Foundation

class Box<Contents> {
    let contents: Contents
    
    init(contents: Contents) {
        self.contents = contents
    }
}
