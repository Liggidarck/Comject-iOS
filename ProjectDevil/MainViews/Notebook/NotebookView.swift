//
//  NotebookView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct NotebookView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                
                Spacer()
                
                VStack {
                    Image(systemName: "text.book.closed")
                        .resizable()
                        .frame(width: 80, height: 100, alignment: .center)
                        .foregroundColor(.secondary)
                    
                    Text("Your notes will be here")
                        .padding(.top)
                }
                
                Spacer()
                
                
                
            }
            .navigationTitle("Notebook")
            .navigationBarItems(trailing:
                    NavigationLink(
                        destination: AddNote(),
                        label: {
                            Image(systemName: "square.and.pencil")
                        }))
        }
    }
}

struct add_btn:View {
    var body: some View {
        Image(systemName: "plus")
             .frame(width: 50, height: 50)
             .foregroundColor(Color.white)
             .background(Color.blue)
             .clipShape(Circle())
    }
}

struct NotebookView_Previews: PreviewProvider {
    static var previews: some View {
        NotebookView()
        add_btn()
    }
}
