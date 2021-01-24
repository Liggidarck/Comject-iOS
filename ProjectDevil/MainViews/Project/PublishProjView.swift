//
//  PublishProjView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct PublishProjView: View {
    var body: some View {
        ScrollView {
            projectPublishCard().padding()
        }
        .navigationTitle("Publish")
        .navigationBarItems(trailing:
            Button(action: {
                print("Shared button pressed...")
            }) {
                Text("Share")
            })
    }
}

struct projectPublishCard: View {
    var body: some View {
        VStack {
            Image("6")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
            
            HStack {
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
                }.layoutPriority(100)
                Spacer()
            }.padding()
            
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red:150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1))
    }
}

struct PublishProjView_Previews: PreviewProvider {
    static var previews: some View {
        PublishProjView()
        projectPublishCard()
    }
}
