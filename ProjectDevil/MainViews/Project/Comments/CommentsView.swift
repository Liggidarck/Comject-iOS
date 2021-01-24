//
//  CommentsView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct CommentsView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    AvaNoBorder()
                        .frame(width: 75, height: 75, alignment: .center)
                        .padding(.horizontal, -30)
                        .padding(.top, -20)
                        .padding(.bottom, -30)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text("George Filatov")
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
                
                likes_and_comment().padding()
                
                HStack {
                    Text("2.7k Comments")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer()
                }.padding(.horizontal)
                
                cardComment().padding()
                cardComment().padding()

                
                
                
            }
        }
        .navigationTitle("Post")
        
    }
}

struct avaCardComment: View {
    var body: some View {
        VStack {
            HStack {
                AvaNoBorder()
                    .frame(width: 75, height: 75, alignment: .center)
                    .padding(.horizontal, -30)
                    .padding(.top, -20)
                    .padding(.bottom, -30)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("George Filatov")
                    Text("liggidarck")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }.padding(.top, 10)
                Text("22 hours ago")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Image(systemName: "heart")
                    .padding(.horizontal)
                
            } .padding(.leading)
            
        }
        
    }
}

struct cardComment:View {
    var body: some View {
        VStack {
            avaCardComment()
            HStack {
                Text("Дефолтный текст коментария")
                Spacer()
            }.padding()
            
            HStack {
                Text("ОТВЕТИТЬ")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding()
                Spacer()
            }
            
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red:150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1))
        
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
        avaCardComment()
        
        cardComment()
    }
}
