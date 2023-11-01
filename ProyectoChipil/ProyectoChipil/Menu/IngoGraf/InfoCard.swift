//
//  InfoCard.swift
//  ProyectoChipil
//
//  Created by CEDAM10 on 31/10/23.
//

import SwiftUI

struct InfoCard: View {
    var body: some View {
        VStack{
            
            Image("Ansiedad 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:160, height: 217, alignment: .top)
                .overlay(alignment: .bottom){
            //Text(recipe.name)
              Text("haja")
                .font(.headline)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 3, x:0, y:0)
                .frame(maxWidth: 136)
                .padding()
        }
            
        placeholder: do {
            Image(systemName:"photo")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(alignment: .bottom){
                   // Text(recipe.name)
                    Text("KDCN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3, x:0, y:0)
                        .frame(maxWidth: 136)
                        .padding()
                }
        }
    }
        .frame(width:160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors:[Color(.gray).opacity(0.3),Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y:10)
     }
}


#Preview {
    InfoCard()
}
