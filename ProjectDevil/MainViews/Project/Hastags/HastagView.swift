//
//  HastagView.swift
//  ProjectDevil
//
//  Created by George Filatov on 28.01.2021.
//

import SwiftUI

struct HastagView: View {
    
    @State var hastag: String = ""
    
    var body: some View {
        ScrollView {
            TextField("Hastags", text: $hastag)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
        }.navigationTitle("Hastags")

    }
}

struct HastagView_Previews: PreviewProvider {
    static var previews: some View {
        HastagView()
    }
}
