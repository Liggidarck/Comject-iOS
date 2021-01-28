//
//  FiltersView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct FiltersView: View {
    var body: some View {
        ScrollView {
            
            VStack {
                
                
                HStack {
                    Text("Biology").padding(.horizontal)
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)
                
                HStack {
                    Text("Chemistry").padding(.horizontal)
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)
                
                HStack {
                    Text("Economics").padding(.horizontal)
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)

                HStack {
                    Text("English").padding(.horizontal)
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)

                HStack {
                    Text("IT").padding(.horizontal)
                    
                    Spacer()
                }
                
                Divider().padding(.horizontal)

                
                
            }
            
        }
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}
