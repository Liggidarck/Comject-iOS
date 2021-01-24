//
//  InformationView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Spacer()
                add_btn().padding(30)
            }
        }
        .navigationTitle("Information")
        
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}