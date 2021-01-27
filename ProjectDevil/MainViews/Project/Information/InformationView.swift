//
//  InformationView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct InformationView: View {
    var body: some View {

        VStack{
            postTeather().padding()
            Spacer()
        }
        .navigationTitle("Information")
        
    }
}

struct postTeather: View {
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
                    Text("Anton Rovenko")
                        .foregroundColor(.black)
                    Text("@ant_cat")
                        .font(.caption2)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
            }.padding([.leading], 10)
            
            Text("Дефолтный main текст годе находится техническое задание по твоему проекту. ТЕКСТ. Long default text for you project.  Long continuation of the description. Мой уровень английского не позволяет сделать мне более длинный текст на английском, поэтому продолжу на русском чтобы текст описания выглядил более объёмно. Дефолтный main текст годе находится техническое задание по твоему проекту. Дефолтный main текст годе находится техническое задание по твоему проекту. Дефолтный main текст годе находится техническое задание по твоему проекту.").font(.caption).padding(10)
            
            
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red:150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1))
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
