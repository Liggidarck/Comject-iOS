//
//  AvaView.swift
//  ProjectDevil
//
//  Created by George Filatov on 15.01.2021.
//

import SwiftUI

struct AvaView: View {
    var body: some View {
        Image("ava_me")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
    }
}

struct AvaViewAnton: View {
    var body: some View {
        Image("anton_ava")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct AvaViewKate: View {
    var body: some View {
        Image("main_kate_ava")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct AvaViewFire: View {
    var body: some View {
        Image("ava_agamir")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct AvaNoBorder: View {
    var body: some View {
        Image("ava_me")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct AvaView_Previews: PreviewProvider {
    static var previews: some View {
        AvaViewAnton()
        AvaView()
    }
}
