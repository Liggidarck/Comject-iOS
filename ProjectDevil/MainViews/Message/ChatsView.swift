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
                NavigationLink(
                    destination: MessageView(),
                    label: {
                        itemChatMe()
                    })
                
                itemChatKate()
                itemChatFire()
            }
            .navigationTitle("Chats")
            .navigationBarItems(trailing:
                NavigationLink( destination: AddChatView(),
                    label: {
                    Image(systemName: "square.and.pencil").imageScale(.large)
                    }
                )
            )
            
        }
    }
}

struct itemChatMe: View {
    var body: some View {
        HStack {
            AvaNoBorder()
                .frame(width: 80, height: 85, alignment: .center)
                .padding(.horizontal, -30.0)
                .padding(.vertical, -30.0)
                .padding()
            
            VStack(alignment: .leading) {
                Text("George Filatov").foregroundColor(.primary)
                Text("You: Photo").font(.caption2).foregroundColor(.secondary)
                Divider()
            }
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.leading, 5.0)
        
        
    }
}


struct itemChatKate: View {
    var body: some View {
        HStack {
            AvaViewKate()
                .frame(width: 50, height: 85, alignment: .center)
                .padding(.horizontal, -13.0)
                .padding(.vertical, -30.0)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Kate Sheptukhina")
                    .foregroundColor(.primary)
                Text("Ok")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                Divider()
            }
        
            
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.leading, 5.0)
        
        
    }
}

struct itemChatFire: View {
    var body: some View {
        HStack {
            AvaViewFire()
                .frame(width: 50, height: 85, alignment: .center)
                .padding(.horizontal, -13.0)
                .padding(.vertical, -30.0)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Fire Owl")
                    .foregroundColor(.primary)
                Text("You: Yes")
                    .font(.caption2)
                    .foregroundColor(.secondary)
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
    }
}
