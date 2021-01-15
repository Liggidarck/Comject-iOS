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
                
                Divider().padding()
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
    
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
        }
    }
}
