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
                
                VStack(spacing: 30) {
                    VStack {
                        HStack {
                            Text("Name")
                            Spacer()
                        }
                        
                        TextField("Enter your name...", text: $nameUser)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("Username")
                            Spacer()
                        }
                        
                        TextField("Enter your username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("Topic")
                            Spacer()
                        }
                        
                        TextField("Enter your topic", text: $topic)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("Email")
                            Spacer()
                        }
                        
                        TextField("Enter your email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("City")
                            Spacer()
                        }
                        
                        TextField("Enter your city", text: $city)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("School")
                            Spacer()
                        }
                        
                        TextField("Enter your school", text: $school)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("Grade")
                            Spacer()
                        }
                        TextField("Enter your grade", text: $grade)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("Birthday")
                            Spacer()
                        }
                        
                        TextField("Enter your birthday", text: $birthday)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                }.padding()
            }
            
            HStack {
                Text("Security")
                    .font(.title2)
                Spacer()
            }.padding(.horizontal)
            
            NavigationLink(
                destination: ChangePasswordView(),
                label: {
                    Text("CHANGE PASSWORD")
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .font(.callout)
                        .padding()                    
                })
            
        }
        .navigationTitle("Edit Profile")
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
