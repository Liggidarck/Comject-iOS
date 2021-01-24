//
//  ChangesView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct ChangesView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Spacer()
                add_btn().padding(30)
            }
        }
        .navigationTitle("Changes")
        
    }
}

struct ChangesView_Previews: PreviewProvider {
    static var previews: some View {
        ChangesView()
    }
}
