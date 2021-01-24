//
//  AddIssue.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct AddIssue: View {
    @State var nameIssue: String = ""
    @State var priorityIssue: String = "High"
    @State var dueDateIssue: String = "31.01.2021"
    @State var noteIssue: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Name Issue", text: $nameIssue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                VStack {
                    TextField("Choose priority", text: $priorityIssue)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    TextField("Add due date", text: $dueDateIssue)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.vertical)
                
                TextField("Add note", text: $noteIssue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }.padding()
        }
        .navigationTitle("Add Issue")
    }
}

struct AddIssue_Previews: PreviewProvider {
    static var previews: some View {
        AddIssue()
    }
}
