//
//  ChatsView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                itemChat()
                itemChat()
                itemChat()
            }
            .navigationTitle("Chats")
            .navigationBarItems(trailing:
                Button(action: {
                    print("New chat button pressed...")
                }) {
                    Image(systemName: "square.and.pencil").imageScale(.large)
                }
            )
            
        }
    }
}

struct itemChat: View {
    var body: some View {
        HStack {
            AvaNoBorder()
                .frame(width: 85, height: 85, alignment: .center)
                .padding(.horizontal, -30.0)
                .padding(.vertical, -30.0)
                .padding()
            
            VStack(alignment: .leading) {
                Text("George Filatov")
                Text("You: Photo")
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

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
        itemChat()
    }
}
