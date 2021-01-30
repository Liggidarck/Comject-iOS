//
//  AddChatView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct AddChatView: View {
    var body: some View {
        ScrollView {
            VStack {
                intemAddChatMe()
                intemAddChatKate()
            }
            .navigationTitle("New Message")
            .navigationBarItems(trailing:
                NavigationLink( destination: AddChatView(),
                    label: {
                    Image(systemName: "magnifyingglass").imageScale(.large)
                    }))
        }
        
    }
}

struct intemAddChatMe:View {
    var body: some View {
        HStack {
            AvaNoBorder()
                .frame(width: 85, height: 85, alignment: .center)
                .padding(.horizontal, -30.0)
                .padding(.vertical, -30.0)
                .padding()
            
            VStack(alignment: .leading) {
                Text("George Filatov")
                Text("@liggidarck")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Divider()
            }
        
            
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.leading, 5.0)
    }
}

struct intemAddChatKate:View {
    var body: some View {
        HStack {
            AvaViewKate()
                .frame(width: 55, height: 85, alignment: .center)
                .padding(.horizontal, -15.0)
                .padding(.vertical, -30.0)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Kate Sheptukhina")
                Text("@kate_sheee")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Divider()
            }
        
            
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.leading, 5.0)
    }
}

struct AddChatView_Previews: PreviewProvider {
    static var previews: some View {
        AddChatView()
    }
}
