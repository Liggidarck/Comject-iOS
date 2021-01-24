//
//  SettingsView.swift
//  ProjectDevil
//
//  Created by George Filatov on 15.01.2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ScrollView {
            
            HStack {
                VStack {
                    AvaNoBorder()
                        .frame(width: 100, height: 100, alignment: .center)
                        .padding(.horizontal, -14.0)
                        .padding(.vertical, -17.0)
                        .shadow(radius: 5)
                    Spacer()
                }
                
                TextMainSettings()
                
                Spacer()
            }
            
            VStack {
                Divider()
            }
            
            
        }
        .navigationTitle("Settings")
    }
}

struct TextMainSettings: View {
    var body: some View{
        VStack(alignment: .leading) {
            Text("George Filatov")
                .font(.title)
            Text("liggidarck@gmail.com")
                .font(.system(size: 15))
                .foregroundColor(.gray)
            
            Divider()
            
            Text("EDIT ACCOUNT")
                .font(.system(size: 16))
                .foregroundColor(.blue)
                .padding(.vertical, 10.0)
            
            Divider()

            Text("SIGN OUT")
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding(.vertical, 10.0)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
