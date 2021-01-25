//
//  AddNote.swift
//  ProjectDevil
//
//  Created by George Filatov on 25.01.2021.
//

import SwiftUI

struct AddNote: View {
    
    @State var nameNotebook: String = ""
    @State var note: String = ""
    
    var body: some View {
        VStack {
            
            TextField("Note name", text: $nameNotebook)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Note", text: $note)
                .textFieldStyle(RoundedBorderTextFieldStyle())
           Spacer()
        }.padding()
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
