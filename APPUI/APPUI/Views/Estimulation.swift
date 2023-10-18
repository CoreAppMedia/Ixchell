//
//  Estimulation.swift
//  APPUI
//
//  Created by ximena juana mejia jacobo on 13/10/23.
//

import SwiftUI

struct Estimulation: View {
    var body: some View {
        VStack{
            Link(destination: URL(string: "https://www.gob.mx/cms/uploads/attachment/file/106809/guia-edu-inicial.pdf")!) {
                HStack{
                    Image(systemName: "figure.and.child.holdinghands")
                    Text("Informacion sobre estimulacion")
                
                }
            }
        }
    }
}

#Preview {
    Estimulation()
}
