//
//  GeneralInfo.swift
//  ProjectDevil
//
//  Created by George Filatov on 28.01.2021.
//

import SwiftUI

struct GeneralInfo: View {
    var body: some View {
        ScrollView {
            VStack {
                Divider().padding(.horizontal)
                
                HStack {
                    Text("Profile: IT")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    Spacer()
                }
                
                Divider().padding(.horizontal)
                
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Birthday: 01.06.2004")
                            .font(.callout)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                        
                        
                        Text("City: Moscow")
                            .font(.callout)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                    }
                    
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("School: 2122")
                            .font(.callout)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                    }
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)
                
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("Following")
                            .font(.callout)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                        
                        Text("Followers")
                            .font(.callout)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("98")
                            .font(.callout)
                            .padding(.horizontal)
                            .padding(.vertical, 5)

                        Text("28")
                            .font(.callout)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                    }
                    
                }
                Divider().padding(.horizontal)
            }
        }.navigationTitle("General Info")

    }
}

struct GeneralInfo_Previews: PreviewProvider {
    static var previews: some View {
        GeneralInfo()
    }
}
