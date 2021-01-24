//
//  EditProjectView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct EditProjectView: View {
    @State var projectName: String = ""
    @State var projectDescription: String = ""
    @State var prijectTopic: String = ""
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30.0) {
                HStack(spacing: 20) {
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 25, height: 35, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    
                    
                    TextField("Название проекта", text: $projectName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack(spacing: 20) {
                    Image(systemName: "book.closed")
                        .resizable()
                        .frame(width: 25, height: 35, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    
                    
                    TextField("Описание проекта", text: $projectDescription)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack(spacing: 20) {
                    Image(systemName: "book.closed")
                        .resizable()
                        .frame(width: 25, height: 35, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    
                    
                    TextField("Тема проекта", text: $prijectTopic)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
            }.padding()
        }
        .navigationTitle("Edit Project")
        
    }
}

struct EditProjectView_Previews: PreviewProvider {
    static var previews: some View {
        EditProjectView()
    }
}
