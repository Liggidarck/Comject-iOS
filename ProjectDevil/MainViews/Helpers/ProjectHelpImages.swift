//
//  ProjectHelpImages.swift
//  ProjectDevil
//
//  Created by George Filatov on 24.01.2021.
//

import SwiftUI

struct issuesImage: View {
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Image(systemName: "xmark.bin.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.white)
        }
    }
}

struct ChangesImage: View {
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.purple)
                .frame(width: 50, height: 50)
            
            Image(systemName: "chart.bar.xaxis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.white)
        }
    }
}

struct InformationImage: View {
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Image(systemName: "exclamationmark.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.white)
        }
    }
}

struct CommentImage: View {
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            
            Image(systemName: "bubble.right.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.white)
        }
    }
}

struct HastagImage: View {
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            
            Image(systemName: "number")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.white)
        }
    }
}

struct ProjectHelpImages_Previews: PreviewProvider {
    static var previews: some View {
        issuesImage()
        ChangesImage()
        InformationImage()
        CommentImage()
        HastagImage()
    }
}
