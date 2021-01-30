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
    @State private var private_public_project = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30.0) {
                VStack {
                    HStack {
                        Text("Name project")
                        Spacer()
                    }
                    
                    TextField("Enter name project...", text: $projectName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack {
                    HStack {
                        Text("Description")
                        Spacer()
                    }
                    
                    TextField("Enter description...", text: $projectName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack {
                    HStack {
                        Text("Topic")
                        Spacer()
                    }
                    
                    TextField("Enter topic...", text: $projectName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack {
                    Toggle(isOn: $private_public_project) {
                        Text("Private project")
                    }
                }
            }.padding()
            
        }
        .navigationTitle("Edit Project")
        .navigationBarItems(trailing:
                NavigationLink(
                    destination: EditProjectViewPage2(),
                    label: {
                        Text("Next")
                    }))
        
    }
}

struct EditProjectView_Previews: PreviewProvider {
    static var previews: some View {
        EditProjectView()
    }
}
