//
//  MessageView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        TopMessage()
    }
}

struct TopMessage: View {
    var body: some View {
        VStack {
            HStack {
                AvaNoBorder()
                    .frame(width: 75, height: 75, alignment: .center)
                    .padding(.horizontal, -30)
                    .padding(.vertical, -30)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("George Filatov")
                    Text("online")
                        .font(.caption)
                }
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
        TopMessage()
    }
}
