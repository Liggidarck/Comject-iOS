//
//  HomeView.swift
//  ProjectDevil
//
//  Created by George Filatov on 13.01.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView(.vertical){
                    VStack{
                        HStack{
                            Text("My Work")
                                .font(.system(size: 19, weight: .bold, design: .default))
                            Spacer()
                        }
                        
                        
                        
                    }
                    .padding()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
