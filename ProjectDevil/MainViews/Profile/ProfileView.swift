//
//  ProfileView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    AvaView()
                        .frame(width: 170, height: 170, alignment: .center)
                        .offset(x: -20, y: -85)
                        .padding(.bottom, -120)
                    Spacer()
                }
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("George Filatov")
                            .font(.title)
                        Text("liggidarck")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: EditProfileView(),
                        label: {
                            
                            Text("EDIT PROFILE")
                                .padding(.horizontal, 22.0)
                                .padding(.vertical, 10.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 3)
                                        .stroke(Color.gray, lineWidth: 0.5))
                                .padding(8.0)
                        })
                    
                    
                }.padding(.leading)
                
                profile_data()
                    .padding(.top)
                
                HStack {
                    
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Text("SETTINGS")
                                .padding(.horizontal, 35)
                                .padding(.vertical, 10.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 3)
                                        .stroke(Color.gray, lineWidth: 0.5))
                        })
                    
                    Button(action: {
                        //Вот сюда добавить нажание на кнопку
                        print("Нажата кнопка Edit Profile в ProfileView")
                    }, label: {
                        Text("GENERAL INFO")
                            .padding(.horizontal, 30)
                            .padding(.vertical, 10.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.gray, lineWidth: 0.5))
                    })
                    
                }
                .padding(.top)
                
                Divider().padding(.horizontal)
                
                NavigationLink(
                    destination: MyProjectView(),
                    label: {
                        CardProfile().padding()
                    })
            }
            .navigationTitle("Profile")
        }
    
    }
}

struct CardProfile:View {
    var body: some View{
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
            
            likes_and_comment().padding([.leading, .bottom])
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red:150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1))
    }
}

struct profile_data: View {
    var body: some View {
        HStack {
            
            Spacer()
            
            Button(action: {
            }, label: {
                VStack{
                    Text("4")
                    Text("Posts")
                }
            })

            Spacer()

            Button(action: {
            }, label: {
                VStack{
                    Text("28")
                    Text("Followers")
                }
            })

            
            Spacer()

            Button(action: {
            }, label: {
                VStack{
                    Text("98")
                    Text("Following")
                }
            })

            
            Spacer()

        }
        .font(.system(size: 20))
        .foregroundColor(.black)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
            CardProfile()
        }
    }
}
