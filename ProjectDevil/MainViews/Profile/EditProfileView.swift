//
//  EditProfileView.swift
//  ProjectDevil
//
//  Created by George Filatov on 15.01.2021.
//

import SwiftUI

struct EditProfileView: View {
    @State var nameUser: String = "George Filatov"
    @State var username: String = "liggidarck"
    @State var topic: String = "IT"
    @State var email: String = "liggidarck@gmail.com"
    @State var city: String = "Moscow"
    @State var school: String = "2122"
    @State var grade: String = "10A"
    @State var birthday: String = "01.06.2004"
    
    var body: some View {
        ScrollView{
            VStack {
                Image("3")
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fit)
                
                HStack {
                    AvaView()
                        .frame(width: 130, height: 170, alignment: .center)
                        .offset(x: -10, y: -85)
                        .padding(.bottom, -120)
                    Spacer()
                }
                
                VStack(spacing: 25.0) {
                    TextField("Name", text: $nameUser)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Topic", text: $topic)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("City", text: $city)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("School", text: $school)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Grade", text: $grade)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Birthday", text: $birthday)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }.padding()
            }
            
            HStack {
                Text("Security")
                    .font(.title2)
                Spacer()
            }.padding(.horizontal)
            
            Text("CHANGE PASSWORD")
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .foregroundColor(.white)
                .background(Color.blue)
                .font(.callout)
                .padding()
            
        }
        .navigationTitle("Edit Profile")
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
