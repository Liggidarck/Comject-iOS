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
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    MainProjectCard()
                }
            }
            
            .navigationTitle("Home")
            .padding()
        }
    }
}

struct MainProjectCard: View {
    var body: some View {
        VStack {
            
            //Картинка проекта
            HStack {
                Image("4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
            }
            
            //Текст проекта
            VStack(alignment: .leading) {
                
                HStack {
                    Text("MY MAIN PROJECT")
                        .font(.system(size: 14, weight: .light, design: .default))
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text("Gradient Notes")
                        .font(.system(size: 28, weight: .bold, design: .default))
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text("Long default text for you project.  Long continuation of the description. Мой уровень английского не позволяет сделать мне более длинный текст на английском, поэтому продолжу на русском чтобы текст описания выглядил более объёмно.")
                        .font(.system(size: 17, weight: .light, design: .default))
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text("#Информатика #Программирование #IT #Мобильное приложение #что-то еще #длинноеслово ")
                        .font(.system(size: 14, weight: .light, design: .default))
                        .foregroundColor(Color.blue)
                    Spacer()
                }
                
            }
            
            //Лайки комменты
            VStack {
                HStack(spacing: 20.0) {
                    HStack {
                        Image("like_border")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .aspectRatio(contentMode: .fit)
                        
                        Text("3.4k")
                            .font(.system(size: 14, weight: .light, design: .default))
                    }
                    
                    HStack {
                        Image("chat")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                            .aspectRatio(contentMode: .fit)
                        
                        Text("1.3k Comments")
                            .font(.system(size: 14, weight: .light, design: .default))
                    }
                    
                    Spacer()
                }
                
                //Кнопки
                HStack{
                    Spacer()

                    Button(action: {
                        print("Publish Clicked!") //Это типа логи
                    }, label: {
                        Text("Publish").font(.system(size: 17))
                    })
                    Spacer()

                    Button(action: {
                        print("Edit Project Clicked!") //Это типа логи
                    }, label: {
                        Text("Edit Project").font(.system(size: 17))
                    })
                    Spacer()
                    
                }.padding(.top)
                
            }
            
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
