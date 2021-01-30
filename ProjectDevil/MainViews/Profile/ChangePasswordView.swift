//
//  ChangePasswordView.swift
//  Comject
//
//  Created by George Filatov on 30.01.2021.
//

import SwiftUI

struct ChangePasswordView: View {
    
    @State var currnetPas:String = ""
    @State var newPassword:String = ""
    @State var confirmPas:String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(spacing: 30) {
                    
                    VStack {
                        
                        HStack {
                            Text("Current Password")
                            Spacer()
                        }
                        
                        TextField("Enter current password...", text: $currnetPas)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                }.padding()
                
                VStack {
                    
                    VStack {
                        HStack {
                            Text("New Password")
                            Spacer()
                        }
                        
                        TextField("Enter new password...", text: $newPassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack {
                        HStack {
                            Text("Confirm Password")
                            Spacer()
                        }
                        
                        TextField("Enter new password...", text: $confirmPas)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(.top, 10)
                    
                }.padding()
                
                
                VStack {
                    Text("CHANGE PASSWORD")
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .font(.callout)
                        .padding()
                    
                    
                    Text("FORGOT PASSWORD?")
                        .font(.system(size: 13))
                        .foregroundColor(.blue)
                        .padding(.vertical, 10.0)
                }
                
                
            }
        }
        .navigationTitle("Change Password")
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
