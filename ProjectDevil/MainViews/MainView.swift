//
//  ContentView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                NotebookView()
                    .tabItem {
                        Image(systemName: "text.book.closed")
                        Text("Notebook")
                    }
                
                ExploreView()
                    .tabItem {
                        Image(systemName: "cube")
                        Text("Explore")
                    }
                
                ChatsView()
                    .tabItem {
                    Image(systemName: "message")
                    Text("Chats")
                }
                
                ProfileView().tabItem {
                    Image(systemName: "graduationcap")
                    Text("Profile")
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
