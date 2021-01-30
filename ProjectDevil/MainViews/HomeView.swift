//
//  HomeView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                NavigationLink(
                    destination: MyProjectView(),
                    label: {
                        MainProjectCard().padding()
                    })
            }
            
            .navigationTitle("Home")
        }
    }
}

struct MainProjectCard: View {
    
    var body: some View {
        VStack {
            Image("6")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("MY MAIN PROJET")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
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
                }.layoutPriority(100)
                Spacer()
            }.padding()
            
            likes_and_comment().padding(.leading)
            
            buttons_card().padding()
            
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red:150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1))
    }
}

struct buttons_card: View {
    var body: some View {
        HStack {
            
            NavigationLink(
                destination: PublishProjView(),
                label: {
                    HStack(spacing: -10) {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.secondary)
                            .padding(5)
                            .padding(.leading, 5)
                        Text("Publish")
                            .padding(.horizontal, 30.0)
                            .padding(.vertical, 10.0)
                            .font(.system(size: 14))
                            .foregroundColor(.primary)
                    }.overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 0.5))
                })
            
            Spacer()
            
            NavigationLink(
                destination: EditProjectView(),
                label: {
                    HStack(spacing: -10) {
                        Image(systemName: "pencil")
                            .foregroundColor(.secondary)
                            .padding(5)
                            .padding(.leading, 5)
                        Text("Edit Project")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10.0)
                            .font(.system(size: 14))
                            .foregroundColor(.primary)
                    }.overlay(RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 0.5))
                })
            
        }
    }
}

struct likes_and_comment:View {
    var body: some View {
        HStack(spacing: 10) {
            
            HStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 22, height: 22, alignment: .center)
                    .foregroundColor(.red)
                    
                Text("591")
                    .font(.caption)
                    .foregroundColor(.primary)
            }
            
            HStack {
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 22, height: 22, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.secondary)
                
                Text("341 Comment")
                    .font(.caption)
                    .foregroundColor(.primary)

            }
            
            Spacer()
            
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.dark)
        }
        MainProjectCard()
    }
}
#endif
