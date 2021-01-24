//
//  Post.swift
//  ProjectDevil
//
//  Created by George Filatov on 19.01.2021.
//

import Foundation

struct Post: Identifiable {
    
    var id: String = UUID().uuidString
    
    let name: String?
    
    let description: String?
    
    let hastag: String?
    
    init(name: String?, description: String?, hastag: String?) {
        self.name = name
        self.description = description
        self.hastag = hastag
    }
    
}
