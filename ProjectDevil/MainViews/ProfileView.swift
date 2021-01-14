//
//  ProfileView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            Image("3")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                ava()
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
                
                Button(action: {
                    //Вот сюда добавить нажание на кнопку
                    print("Нажата кнопка Edit Profile в ProfileView")
                }, label: {
                    Text("EDIT PROFILE")
                })
                
                Spacer()
                
            }.padding(.leading)
            
            profile_data()
            Spacer()
            
        }
    }
    
    
}

struct ava: View {
    var body: some View{
        Image("ava_me")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
    }
}

struct profile_data: View {
    var body: some View {
        Text("4")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
