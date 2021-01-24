//
//  IssuesView.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct IssuesView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Spacer()
                NavigationLink(
                    destination: AddIssue(),
                    label: {
                        add_btn().padding(30)
                    })
            }
            
        }
        .navigationTitle("Issues")

        
    }
}

struct IssuesView_Previews: PreviewProvider {
    static var previews: some View {
        IssuesView()
    }
}
