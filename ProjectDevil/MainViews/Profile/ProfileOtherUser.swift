//
//  ProfileOtherUser.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct ProfileOtherUser: View {
    var body: some View {
        ScrollView {
            VStack {
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
                    
                    Text("SUBSCRIBE")
                        .padding(.horizontal, 22.0)
                        .padding(.vertical, 10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 0.5))
                        .padding(8.0)
                    
                }.padding(.horizontal)
             
                profile_data()
                    .padding(.top)
                
                HStack {
                    
                    Text("MESSAGE")
                        .padding(.horizontal, 35)
                        .padding(.vertical, 10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 0.5))
                    
                    Text("GENERAL INFO")
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 0.5))
                    
                }
                .padding(.top)
                
                Divider().padding()
                
                Spacer()
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileOtherUser_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOtherUser()
    }
}
