//
//  MyProjectView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct MyProjectView: View {
    var body: some View {
        ScrollView {
            VStack{
                TitelProject()
                actionsWithProject().padding(.top, 10.0)
                ProjectDescription()
            }.padding()
        }
        .navigationTitle("My Project")

        
    }
}

struct TitelProject: View {
    var body: some View {
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
            
            buttons_card()
            
        }
    }
}

struct actionsWithProject: View {
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
                        InformationImage()
                        Text("Information From Teather")
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

struct ProjectDescription: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Title goes here")
                    .font(.title)
                Spacer()
            }
            
            Image("4")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
            
            HStack {
                Text("DESCRIPTION")
                    .font(.callout)
                Spacer()
            }
        }
    }
}



struct MyProjectView_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectView()
        TitelProject()
        actionsWithProject()
        ProjectDescription()
    }
}
