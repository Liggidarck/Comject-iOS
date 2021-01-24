//
//  ProjectOtherUser.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct ProjectOtherUser: View {
    var body: some View {
        ScrollView {
            VStack{
                NavigationLink(
                    destination: ProfileOtherUser(),
                    label: {
                        HStack {
                            AvaNoBorder()
                                .frame(width: 75, height: 75, alignment: .center)
                                .padding(.horizontal, -30)
                                .padding(.top, -20)
                                .padding(.bottom, -30)
                                .padding()
                            
                            VStack(alignment: .leading) {
                                Text("George Filatov")
                                    .foregroundColor(.black)
                                Text("liggidarck")
                                    .font(.caption2)
                                    .foregroundColor(.gray)
                            }.padding(.top, 10)
                            
                            VStack {
                                Text("SUBSCRIBE")
                                    .font(.caption2)
                                    .foregroundColor(.blue)
                            }.padding(.leading, 10).padding(.top, -3)
                             
                            
                            Spacer()
                        }.padding(.bottom, 10)
                    })
                
                VStack(alignment: .leading) {
                    Text("Title goes here")
                        .font(.title)
                        .foregroundColor(.primary)
                    Text("Long default text for you project.  Long continuation of the description. Мой уровень английского не позволяет сделать мне более длинный текст на английском, поэтому продолжу на русском чтобы текст описания выглядил более объёмно.")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.top, 10.0)
                    Text("#Информатика #Программирование #IT")
                        .font(.caption)
                        .foregroundColor(.blue)
                        .padding(.top, 3.0)
                    
                    HStack(spacing: 10) {
                        
                        HStack {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.red)
                                
                            Text("591")
                                .font(.caption)
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                
                HStack {
                    Text("LIKE")
                        .padding(.horizontal, 30.0)
                        .padding(.vertical, 10.0)
                        .font(.system(size: 14))
                        .overlay(RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 0.5))
                    
                    Spacer()
                    
                    Text("COMMENT")
                        .padding(.horizontal, 30.0)
                        .padding(.vertical, 10.0)
                        .font(.system(size: 14))
                        .overlay(RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 0.5))
                    
                }
                
                ActionWithPostProject()
                
                ProjectDescription()
                
            }.padding()
        }
        .navigationTitle("Post")
        
    }
}

struct ActionWithPostProject: View {
    var body: some View {
        VStack {
            Divider()
            
            NavigationLink(
                destination: IssuesView(),
                label: {
                    HStack {
                        issuesImage()
                        Text("Issues")
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                })
            
            NavigationLink(
                destination: ChangesView(),
                label: {
                    HStack {
                        ChangesImage()
                        Text("Changes")
                            .foregroundColor(.black)
                        Spacer()
                    }
            })

            NavigationLink(
                destination: InformationView(),
                label: {
                    HStack {
                        TasksImage()
                        Text("Tasks")
                            .foregroundColor(.black)
                        Spacer()
                    }
                })
            
            Divider()
            
            NavigationLink(
                destination: CommentsView(),
                label: {
                    HStack {
                        CommentImage()
                        Text("Comments")
                            .foregroundColor(.black)
                        Spacer()
                    }
                })
            
            HStack {
                HastagImage()
                Text("Hastags")
                Spacer()
            }
            
            Divider()
            
        }
    }
}

struct ProjectOtherUser_Previews: PreviewProvider {
    static var previews: some View {
        ProjectOtherUser()
        ActionWithPostProject()
    }
}
