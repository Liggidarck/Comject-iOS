//
//  ExploreView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{

            ScrollView {
                NavigationLink(
                    destination: ProjectOtherUser(),
                    label: {
                        ExplorePost().padding()
                    })
            }
            .navigationTitle("Explore")
            .navigationBarItems(trailing:
                NavigationLink( destination: FiltersView(),
                    label: {
                    Image(systemName: "personalhotspot").imageScale(.large)
                    }
                )
            )
            
        }
    }
}

struct ExplorePost: View {
    var body: some View {
        VStack {
            
            HStack {

                NavigationLink(
                    destination: ProfileView(),
                    label: {
                        AvaNoBorder()
                            .frame(width: 75, height: 75, alignment: .center)
                            .padding(.horizontal, -30)
                            .padding(.top, -20)
                            .padding(.bottom, -30)
                            .padding()
                        
                    })
                                        
                VStack(alignment: .leading) {
                    Text("George Filatov")
                        .foregroundColor(.black)
                    Text("liggidarck")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }.padding(.top, 10)
                
                Spacer()
            } .padding(.leading)
            
            Image("6")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Title goes here")
                        .font(.title)
                        .foregroundColor(.primary)
                    Text("Long default text for you project. Long continuation of the description. Мой уровень английского не позволяет сделать мне более длинный текст на английском, поэтому продолжу на русском чтобы текст описания выглядил более объёмно.")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.top, 10.0)
                    Text("#Информатика #Программирование #IT")
                        .font(.caption)
                        .foregroundColor(.blue)
                        .padding(.top, 3.0)
                }.layoutPriority(100)
                Spacer()
            }.padding()
            
            likes_and_comment().padding(.leading)
            buttons_posts_explore().padding()
            
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red:150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1))
    }
}

struct buttons_posts_explore: View {
    var body: some View{
        HStack {
             
            Button(action: {
                
            }) {
                HStack(spacing: -10.0) {
                    Image(systemName: "heart")
                        .foregroundColor(.blue)
                        .padding(5)
                        .padding(.leading, 5)
                    
                    Text("LIKE")
                        .padding(.horizontal, 30.0)
                        .padding(.vertical, 10.0)
                        .font(.system(size: 14))
                }
            }.overlay(RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: 0.5))
            
            Spacer()
            
            NavigationLink(
                destination: CommentsView(),
                label: {
                    HStack(spacing: -10.0) {
                        Image(systemName: "message")
                            .foregroundColor(.blue)
                            .padding(5)
                            .padding(.leading, 5)
                        Text("COMMENT")
                            .padding(.horizontal, 30.0)
                            .padding(.vertical, 10.0)
                            .font(.system(size: 14))
                    }.overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 0.5))
                })
        }
    }
    
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
        ExplorePost()
    }
}
