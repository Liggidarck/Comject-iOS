//
//  EditProjectViewPage2.swift
//  Comject
//
//  Created by George Filatov on 29.01.2021.
//

import SwiftUI

struct EditProjectViewPage2: View {
    
    @State var projectNamePage2: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack {
                        Text("Name project")
                        Spacer()
                    }
                    
                    TextField("Enter name project...", text: $projectNamePage2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Быстрое, современное, настраиваемое приложениедля создания заметок, удобного серфинга в интернете без рекламы.Gradient Notes Pro – удобное настраиваемое приложение для создания заметок. Записывайте идеи и планы, составляйте списки покупок в удобном формате. Вы можете сохранить найденную интересную статью из интернета, надежно сохранить пароль от любого аккаунта. Приложение не содержит рекламы и ненужных разрешений. Поскольку приложение не требует доступа в интернет, ваша конфиденциальность защищена.")
                        .font(.caption).padding(.top, 20)
                    
                    
                    Divider().padding(.top)
                    
                    Image("6")
                        .resizable()
                        .aspectRatio(16/9, contentMode: .fit)
                        .cornerRadius(10)
                        .padding(.top)
                    
                    
                    HStack {
                        HStack(spacing: -10) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.blue)
                                .padding(5)
                                .padding(.leading, 5)
                            Text("FIND MORE")
                                .padding(.horizontal, 30.0)
                                .padding(.vertical, 10.0)
                                .font(.system(size: 14))
                                .foregroundColor(.blue)
                        }.overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 0.5))
                        
                        Spacer()
                    }.padding(.top, 10)

                    HStack {
                        Spacer()
                        Text("SAVE")
                            .padding(.horizontal, 30.0)
                            .padding(.vertical, 10.0)
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                            .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 0.5))
                    }.padding(.top)
                    
                    
                }
            }.padding()
        }
        .navigationTitle("Edit Project")
    }
}

struct EditProjectViewPage2_Previews: PreviewProvider {
    static var previews: some View {
        EditProjectViewPage2()
    }
}
