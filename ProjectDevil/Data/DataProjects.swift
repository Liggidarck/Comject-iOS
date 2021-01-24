//
//  DataProjects.swift
//  ProjectDevil
//
//  Created by George Filatov on 19.01.2021.
//

import Foundation

struct DataProjects {
    
    static func main_project() -> [Post] {
        
        let post1 = Post(name: "Modern Notes", description: "LOL", hastag: "#IT")
        
        return [post1]
    }
    
    static func sub_project() -> [SubProject] {
        
        let fist = SubProject(name_sub: "Title goes here", description_sub: "LOL2", hastag_sub: "#HIT")
        
        return[fist]
        
    }
    
}
