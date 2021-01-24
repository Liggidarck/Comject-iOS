//
//  SubProject.swift
//  ProjectDevil
//
//  Created by George Filatov on 19.01.2021.
//

import Foundation

struct SubProject: Identifiable {
    
    var id: String = UUID().uuidString
    
    let name_sub: String?
    
    let description_sub: String?
    
    let hastag_sub: String?
    
    init(name_sub: String?, description_sub: String?, hastag_sub: String?) {
        self.name_sub = name_sub
        self.description_sub = description_sub
        self.hastag_sub = hastag_sub
    }
    
}
