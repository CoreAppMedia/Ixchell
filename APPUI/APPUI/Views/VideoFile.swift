//
//  VideoFile.swift
//  APPUI
//
//  Created by ximena juana mejia jacobo on 13/10/23.
//

import SwiftUI
import AVKit

struct VideoFile: View {
    let url = URL(string: "https://media.giphy.com/media/nBvri64uO4sX6/giphy.mp4")!
    @State var anotaciones: String = ""
    var body: some View {
        VideoPlayer(player: .init(url: url))
        Text ("NARUTO")
           // .padding(200)
       
        TextField("anotaciones", text: $anotaciones)
          //  .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
            .padding(24)
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
    }
}

#Preview {
    VideoFile()
}
