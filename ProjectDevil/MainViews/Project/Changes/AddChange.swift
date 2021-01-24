//
//  AddChange.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct AddChange: View {
    @State var nameChange: String = ""
    @State var addDateChange: String = ""
    @State var NoteChange: String = ""
    
    var body: some View {
        VStack {
            TextField("Name Change", text: $nameChange)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Add date", text: $addDateChange)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.vertical)
            
            TextField("Note Change", text: $NoteChange)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
        }.padding()
        .navigationTitle("Add Change")
    }
}

struct AddChange_Previews: PreviewProvider {
    static var previews: some View {
        AddChange()
    }
}
