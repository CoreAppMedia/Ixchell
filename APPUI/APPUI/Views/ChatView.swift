//
//  ChatView.swift
//  APPUI
//
//  Created by ximena juana mejia jacobo on 13/10/23.
//

import SwiftUI

struct Message: Identifiable {
    var id = UUID()
    var text: String
    var isUser: Bool
}

struct ChatView: View {
    @State private var messages: [Message] = []
    @State private var newMessage = ""

    var body: some View {
        VStack {
            List(messages) { message in
                if message.isUser {
                    HStack {
                        Spacer()
                        Text(message.text)
                            .padding(8)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                } else {
                    HStack {
                        Text(message.text)
                            .padding(8)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
            }
            HStack {
                TextField("Escribe un mensaje", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(8)
                Button("Enviar") {
                    messages.append(Message(text: newMessage, isUser: true))
                    newMessage = ""
                }
            }
            .padding()
        }
        .navigationBarTitle("Chat")
    }
}


#Preview {
    ChatView()
}
